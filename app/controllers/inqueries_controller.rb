class InqueriesController < ApplicationController
  def new
    @inquery = Inquery.new
  end

  def create
    @inquery = Inquery.new(inquery_params)
    if @inquery.save
      @inquery.send_user_inquery
      flash[:info] = 'Send your inquery message.'
      redirect_to root_url
    else
      render 'new'
    end
  end
  
  private

  def inquery_params
    params.require(:inquery).permit(:name, :email, :content)
  end
end
