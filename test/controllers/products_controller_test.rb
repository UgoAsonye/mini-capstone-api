require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  setup do
    @user = User.create(name: "Admin", email: "admin@info.com", password: "password", password_confirmation: "password", admin: true)

    post "/sessions.json", params: { email: "admin@info.com", password: "password" }

    data = JSON.parse(response.body)
    @jwt = data["jwt"]
  end
  test "index" do
    get "/products.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Product.count, data.length
  end

  test "show" do
    get "/products/#{Product.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "price", "images", "description", "is_discounted?", "tax", "total", "supplier"], data.keys
  end
  test "create" do
    #Testing a successful response
    assert_difference "Product.count", 1 do
      post "/products.json",
           headers: { "Authorization" => "Bearer #{@jwt}" },
           params: { name: "test product", price: 1, description: "test description", supplier_id: Supplier.first.id }
    end

    #Testing product create w/o params (faild validations)
    post "/products.json",
         headers: { "Authorization" => "Bearer #{@jwt}" },
         params: {}
    assert_response 422

    #Testing a product create when user is not an admin
    post "/products.json"
    assert_response 401
  end

  test "update" do
    product = Product.first

    #Successful product update test
    patch "/products/#{product.id}.json",
          headers: { "Authorization" => "Bearer #{@jwt}" },
          params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]

    #Test unsuccessful product update from admin
    patch "/products/#{product.id}.json",
          headers: { "Authorization" => "Bearer #{@jwt}" },
          params: { name: "" }
    assert_response 422

    #tests unsuccessful product update from non-admin
    patch "/products/#{product.id}.json"
    assert_response 401
  end

  test "destroy" do
    #tests successful destroy from admin
    assert_difference "Product.count", -1 do
      delete "/products/#{Product.first.id}.json",
             headers: { "Authorization" => "Bearer #{@jwt}" }
      assert_response 200
    end
    delete "/products/#{Product.first.id}.json"
    assert_response 401
  end
end
