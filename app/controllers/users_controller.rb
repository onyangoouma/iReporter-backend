class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
    rescue_from ActiveRecord::RecordNotFound,with: :response_not_found

   
    def index 
        render json:User.all
    end 

    # def show
    #     user = User.find_by(id: session[:user_id])
    #     render json: user
    # end

    def show
        user = User.find(params[:id]) 
        render json:user
    end

    # def create 
    #     user = User.create!(user_params)
    #     render json:user, status: :created
    # end
    
    def create 
        user = User.find_by(username: params[:username]) 
        if user&.authenticate(params[:password]) 
            session[:user_id] = user.id 
            render json: user,status: :created 
        else
            render json: { error:{ login:"Invalid email or password"} }, status: :unauthorized 
        end
    end 


    private

    def response_not_found 
        render json: {  error: "User not found" }, status: :not_found
    end

    private

    def user_params 
        params.permit(:name, :username, :email, :password) 
    end

end
