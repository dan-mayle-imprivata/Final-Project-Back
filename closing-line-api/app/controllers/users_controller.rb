class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]
   


    def create
        user = User.new(user_params)

        if user.valid?
            user.save
            my_token = issue_token(user)

            render json:user {id:user.id, name:user.name, email:user.email, token: my_token}, status: :created 
        else
            render json: {error: user.errors.full_messages}, status: :not_acceptable
        end
    end

    def show

    end

    def update

    end

    def destroy
        users.destroy

        # redirect?
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    def find_user
        users = User.find(params[:id])
    end
end
