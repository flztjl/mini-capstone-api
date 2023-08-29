class ProductsController < ApplicationController
  def one_product
    @product = Product.find_by(id: params["id"])
    render template: "products/show"
  end

  def all_products
    @products = Product.all
    render template: "products/index"
  end
end
