module Api
  module V1
    class UsersController < ApplicationController
      def index
        @all_users = User.activated_true
        render "api/v1/users/index", :handlers => 'jbuilder'
      end

      def show
        @user = User.find(params[:id])
        @microposts = @user.microposts.paginate(page: params[:page])
        render "api/v1/users/show", :handlers => 'jbuilder' if @user.activated?
      end

      def update
        @user = User.find(params[:id])
        if @user.update_attributes(user_params)
          respond_to do |format|
            format.json { render json: @user }
          end
        end
      end

      def destroy
        User.find(params[:id]).destroy
      end

      private

      def user_params
        params.require(:user).permit(:name)
      end

    end
  end
end
