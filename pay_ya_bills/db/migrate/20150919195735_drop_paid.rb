class DropPaid < ActiveRecord::Migration
  def change
  	drop_table :paid_bills
  end
end
