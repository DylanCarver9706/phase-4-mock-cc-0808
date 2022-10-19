class ActivitiesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found

    def index
        render json: Activity.all, status: :ok
    end

    def destroy
        Activity.find(params[:id]).destroy
        head :no_content
    end

    private

    def not_found
        render json: { error: "Activity not found" }, status: :not_found
    end
end
