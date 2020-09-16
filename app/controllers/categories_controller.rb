class CategoriesController < ApplicationController
    skip_before_action :authorized 

    def index 
        category = Category.all 
        categories = category.sort_by{ |obj| obj.id } 
        render json: categories
    end 

    def update 
        category = Category.find(params[:id])
        # category.update(category_params)
        
        if category.update(category_params)
            serialized_data = ActiveModelSerializers::Adapter::Json.new(
                CategorySerializer.new(category)
            ).serializable_hash
            ActionCable.server.broadcast 'categories_channel', serialized_data
            head :ok
            
        end
        
        render json: category 
    end
    
    private 
    def category_params
        params.require(:category).permit(:name)
    end
end
