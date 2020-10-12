class CategoriesController < ApplicationController
    skip_before_action :authorized 

    def index 
        category = Category.all 
        categories = category.sort_by{ |obj| obj.id } 
        render json: categories
    end 

    def update 
        category = Category.find(params[:id])
        category.update(category_params)
        render json: category 
    end
    
    private 
    def category_params
        params.require(:category).permit(:name, :user_id)
    end
end
