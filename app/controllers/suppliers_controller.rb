class SuppliersController < ApplicationController
  def index
    @supplier = Supplier.all
    render :index
  end

  def show
    @supplier = Supplier.find_by(id: params[:id])
    render :show
  end

  def create
    @supplier = Supplier.create(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number],
      supplier_id: params[:supplier_id],
    )
    render :show
  end

  def update
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.update(
      name: params[:name] || @supplier.name,
      email: params[:email] || @supplier.email,
      phone_number: params[:phone_number] || @supplier.phone_number,
      supplier_id: params[:supplier_id] || @supplier.supplier_id,
    )
    render :show
  end

  def destroy
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.destroy
    render json: { message: "Supplier destroyed successfully" }
  end
end
