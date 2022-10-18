class GymController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :not_found

    def index
        render json: Gym.all, status: :ok
    end
    
    def show
        render json: Gym.find(params[:id]), status: :ok
       
        end


    private 
    def not_found
        render json: {"error": "Gym not found"}
    end

    
end
