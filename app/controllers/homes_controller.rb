class HomesController < ApplicationController
  def index; end

  def create
    UserMailer.ask_question(params[:email]).deliver_now

    redirect_to action: :index
  end
end
