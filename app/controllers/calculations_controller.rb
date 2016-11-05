class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end
  def square_root
@number = params[:number]
  end

def random
  @min = params[:min]
  @max = params[:max]
end

def payment
@interest = params[:interest].to_f
@year = params[:year].to_i
@amount = params[:amount].to_i


percent = @interest/120000
payment = (@amount*percent)/(1-(1+percent)**(@year*-12))


  @monthly_payment = payment.round(2)
end

end
