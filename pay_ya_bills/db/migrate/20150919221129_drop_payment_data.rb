class DropPaymentData < ActiveRecord::Migration
  def change
  	drop_table :payment_data
  end
end
