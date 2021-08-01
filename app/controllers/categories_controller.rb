class CategoriesController < ApplicationController
  before_action :load_category, only: [:update, :destroy, :show]

  def index
    @categories = Category.all
  end

  def show
  end

  def create
    @category = Category.new
    @category.attributes = category_params
    save_category
  end

  def update
    @category.attributes = category_params
    save_category!
  end

  def destroy
    @category.destroy!    
  end

  private

  def load_category
    @category = Category.find(params[:id])
   end
  

  def save_category
    @category.save
  end

  def category_params
    return {} unless params.has_key?(:category)
    params.require(:category).permit(:name)
  end
end
