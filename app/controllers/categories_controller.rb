class CategoriesController < ApplicationController
    skip_before_action :authorized 

    def index 
        category = Category.all 
        render json: category 
    end 

    def update 
        category = Category.find(params[:id])
        category.update(category_params)
    end
    
    private 
    def category_params
        params.require(:category).permit(:name)
    end
end
