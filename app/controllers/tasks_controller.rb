class TasksController < ApplicationController
    skip_before_action :authorized 

    def index 
        tasks = Task.all 
        render json: tasks 
    end 

    def create 
        task = Task.create(task_params)
        if task.save 
            serialized_data = ActiveModelSerializers::Adapter::Json.new(
            TaskSerializer.new(task)
            ).serializable_hash 
            TasksChannel.broadcast_to 'tasks_channel', serialized_data
            head :ok 
        end 
        render json: task
    end 

    def destroy 
        task = Task.find(params[:id])
        task.destroy 
        render json: task 
    end 

    private 
    
    def task_params 
        params.require(:task).permit(:text, :category)
    end
end
