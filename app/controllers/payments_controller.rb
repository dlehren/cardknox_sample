class PaymentsController < ApplicationController
  
  def index
    @payments = Payment.all
  end

  def new
    @payment = Payment.new
  end

  def create
    @ip_address = request.remote_ip
    @payment = Payment.new(payment_params)
    if @payment.save
      if @payment.process
        debugger
        redirect_to payments_path, notice: "The user has been successfully charged." and return
      else
        debugger
        redirect_to payments_path, notice: "The credit card you provided was declined.  Please double check your information and try again." and return
      end
    end
    render 'new'
  end

private

  def payment_params
    params.require(:payment).permit(:first_name, :last_name, :credit_card_number, :expiration_month, :expiration_year, :card_security_code, :amount)
  end
end
