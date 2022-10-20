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

    def show 
        case = Case.find_by(id: params[:id]) 
        if case 
         render json: case
        else
         render json: {error: 'Case not found'}, status: :not_found
        end
     end

    def update
        case= find_case
        case.update(case_params)
        render json: case
    end

    def destroy
        case = find_case
        case.destroy
        head :no_content
    end

    private

    def find_case
        Case.find(params[:id])
    end

    def case_params
        params.permit(:case_type, :title, :description, :location, :date , :image_url, :status)
    end

    def render_unprocessable_entity_response(exception)
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    end
end
