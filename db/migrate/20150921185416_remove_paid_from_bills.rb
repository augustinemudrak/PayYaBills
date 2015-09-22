class RemovePaidFromBills < ActiveRecord::Migration
  def change
  	remove_column :bills, :paid
  end
end
