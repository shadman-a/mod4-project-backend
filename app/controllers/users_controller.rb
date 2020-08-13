class UsersController < ApplicationController
  #skip_before_action :authorized, only: [:create]
    # def index
    #     users = User.all
        
    #     render json: users  
    # end

    def profile
        render json: {user: UserSerializer.new(current_user), status: :accepted}
    end
    
    # def show
    #     user = User.find(params[:id])

    #     render json: user
    # end
    
    def create
        @user = User.create(user_params)
        token = encoded_token({user_id: @user.id})
        render json: {user: @user, jwt: token}, status: :created
    end

    
    # def update
    #     user = User.find(params[:id])
        
    #     user.update(user_params)
    
    #     render json:user
    # end
    
    # def destroy
    #     user= User.find
    
    #     user.destory
    #     render
    # end
    
    private
    
    def user_params
        params.require(:user).permit(:name, :image, :password, :username)
    end
end
