class ProductsController < ApplicationController
  before_action :load_product, only: [:update, :destroy, :show]

  def index
    @products = product.all
  end

  def show
  end

  def create
    @product = product.new
    @product.attributes = product_params
    save_product
  end

  def update
    @product.attributes = product_params
    save_product!
  end

  def destroy
    @product.destroy!    
  end

  private

  def load_product
    @product = product.find(params[:id])
   end
  

  def save_product
    @product.save
  end

  def product_params
    return {} unless params.has_key?(:product)
    params.require(:product).permit(:name)
   end
  end
