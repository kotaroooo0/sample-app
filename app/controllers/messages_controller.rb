class MessagesController < ApplicationController
  def index
    @messages = Message.matching_messages(current_user.id).paginate(page: params[:page])
  end
end
