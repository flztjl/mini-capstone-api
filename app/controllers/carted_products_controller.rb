class CartedProductsController < ApplicationController
  def index
    @carted_products = CartedProduct.all
    render :index
  end
  
  def create
    @carted_products = CartedProduct.create(
      product_id: params[:product_id], 
      user_id: params[:user_id], 
      quantity: params[:quantity], 
      order_id: params[:order_id], 
      status: "purchased"
    )
    render :show
  end  
end
