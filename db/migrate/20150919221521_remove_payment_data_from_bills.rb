class RemovePaymentDataFromBills < ActiveRecord::Migration
  def change
  	remove_column :bills, :payment_data
  end
end
