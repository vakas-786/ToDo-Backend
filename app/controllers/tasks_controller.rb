class TasksController < ApplicationController
    skip_before_action :authorized 
   
   def index 
    byebug
        tasks =  current_user.tasks
        render json: tasks
    end 

    def create 
        task = Task.create(task_params)
        render json: task
    end 

    def destroy 
        task = Task.find(params[:id])
        task.destroy 
        render json: task 
    end 

    private 
    
    def task_params 
        params.require(:task).permit(:text, :category, :user_id)
    end
end
