class RemoveBillIdFromBills < ActiveRecord::Migration
  def change
  	remove_column :bills, :bill_id
  end
end
