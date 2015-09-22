class PaidBillsController < ApplicationController

def index
	@bills = Bill.where(paid: true)
end
private
def bill_params
	params
	.require(:bill)
	.permit(:min_pay, :bill_name, :link, :payment_date, :paid_at)
 end
end