require 'rails_helper'

RSpec.describe "Employees", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/employees/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/employees/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/employees/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/employees/update"
      expect(response).to have_http_status(:success)
    end
  end

end
