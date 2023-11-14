class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @products = Product.all
    render :index
  end

  def show
    @product = Product.find_by(id: params["id"])
    render :show
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      handle_images(@product)
      redirect_to @product, notice: 'Product was successfully created.'
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    if @product.update(product_params) || handle_images(@product)
      render :show
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    if @product.destroy
      render json: { message: "Product is successfully deleted." }
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :supplier_id)
  end

  def handle_images(product)
    params[:image_urls].each do |image_url|
      product.images.create(url: image_url)
    end if params[:image_urls]
  end
end