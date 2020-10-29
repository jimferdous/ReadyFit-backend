class UsersController < ApplicationController
    def index
        users = User.all
    
        # inverse of except is only
        render json: users, except: [:updated_at, :created_at] 
      end
    
      def create
        user = User.new(user_params)
    
        if user.save
          render json: user
        else
          render json: {error: user.errors.full_messages}, status: :not_acceptable
        end
    
      end




      private 

      def user_params
        params.require(:user).permit(:name, :email, :password_digest)
      end
end
