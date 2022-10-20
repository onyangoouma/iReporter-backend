class CasesController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response


    def index
        cases = Case.all
        render json: cases, status: :ok
    end

    def create
        case = Case.create!(case_params)
        render json: case, status: :created
    end

    private

    def case_params
        params.permit(:case_type, :title, :description, :location, :date , :image_url, :status)
    end

    def render_unprocessable_entity_response(exception)
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    end
end
