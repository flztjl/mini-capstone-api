require "test_helper"

class CartedProductsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/carted_products.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal CartedProduct.count, data.length
  end

  test "create" do
    assert_difference "CartedProduct.count", 1 do
      post "/carted_products.json", params: { product_id: 100, user_id: 1, quantity: 1, order_id: 1, status: "purchased" }
      assert_response 200
    end
  end
end
