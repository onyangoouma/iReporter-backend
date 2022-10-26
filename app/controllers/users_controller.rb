class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token({user_id: @user.id})
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :unprocessable_entity
    end
end

    # handles create and autologin
    #skip_before_action :authorize, only: :create


    def index
      users=User.all
      render json:users
    end

    def show
      user = User.find_by(id: session[:user_id])
      if user
      render json: user
      else
          render json: { error: "Not authorized" }, status: :unauthorized
      end
  end


 
    def create
      user = User.create!(user_params)
      session[:user_id] = user.id
      render json: user, status: :created

    skip_before_action :verify_authenticity_token
    rescue_from ActiveRecord::RecordNotFound,with: :response_not_found

   
    # def index 
    #     render json:User.all
    # end 

    def show
        user = User.find_by(id: session[:user_id])
        render json: user
    end

    # def show
    #     user = User.find(params[:id]) 
    #     render json:user
    # end

    # def create 
    #     user = User.create!(user_params)
    #     render json:user, status: :created
    # end
    
    def create 
        user = User.create!(user_params) 
        if user.valid?
            session[:user_id] = user.id 
            render json:user 
        else
            render json: { errors: user.errors.full_messages },status: :unprocessable_entity

        end
    end




  private

  def user_params
    params.require(:user).permit(:username, :password_digest)
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
