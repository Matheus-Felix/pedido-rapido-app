require 'rails_helper'

RSpec.describe "ProductOrders", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/product_orders/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/product_orders/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/product_orders/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/product_orders/update"
      expect(response).to have_http_status(:success)
    end
  end

end
