class BillsController < ApplicationController

 def index
 	@bills = Bill.where(paid: false)
 end

 def new
 	@bill = Bill.new
 end

 def create
 	@bill = Bill.create(bill_params)
 	redirect_to :root
 end

 def show
 	@bill = Bill.find(params[:id])
 end

 def edit
 	@bill = Bill.find(params[:id])
 end

 def update
 	@bill = Bill.find(params[:id])
 	@bill.update(bill_params)
 	redirect_to :root
 end

 def destroy
 	@bill = Bill.find(params[:id])
 	@bill.delete
 	redirect_to :root
 end

private
def bill_params
	params
	.require(:bill)
	.permit(:min_pay, :bill_name, :link, :paid, :payment_date, :paid_at)
 end
end