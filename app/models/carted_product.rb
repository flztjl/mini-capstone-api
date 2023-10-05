class CartedProduct < ApplicationRecord
  protect_from_forgery with: :exception, unless: -> { request.format.json? }
  
  belongs_to :user
  belongs_to :product
  belongs_to :order
end
