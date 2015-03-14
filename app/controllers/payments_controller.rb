class PaymentsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @payments = Payment.all
  end

  def new
    @payment = Payment.new
  end

  def create
    @payment = Payment.new(payment_params.merge(user_id: current_user.id))
    if @payment.save
      redirect_to payments_path
    else
      render 'new'
    end
  end

  private
  def payment_params
    params.require(:payment).permit(:title, :period, :screenshot, :check, :user_id)
  end
end
