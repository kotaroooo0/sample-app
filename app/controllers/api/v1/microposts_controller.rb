module Api
  module V1
    class MicropostsController < ApplicationController
      def create
        @micropost = User.find(params[:user_id]).microposts.build(micropost_params)
        @micropost.saveReplyTarget
        @micropost.save
      end

      def destroy
        @micropost = current_user.microposts.find_by(id: params[:id])
        @micropost.destroy
      end

      private

      def micropost_params
        params.require(:micropost).permit(:content, :picture)
      end
    end
  end
end
