require "test_helper"

class SuppliersControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "index" do
    get "/suppliers.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Supplier.count, data.length
  end

  test "create" do
    assert_difference "Supplier.count", 1 do
      post "/supppliers.json", params: { name: "Google", email: "google@test.com", phone_number: 34567890, supplier_id: 1 }
      assert_response 200
    end
  end

  test "show" do
    get "/suppliers/#{Supplier.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["name", "email", "phone_number", "supplier_id", "created_at", "updated_at"], data.keys
  end

  test "update" do
    supplier = Supplier.first
    patch "/suppliers/#{supplier.id}.json", params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
  end

  test "destroy" do
    assert_difference "Photo.count", -1 do
      delete "/suppliers/#{Photo.first.id}.json"
      assert_response 200
    end
  end
end
