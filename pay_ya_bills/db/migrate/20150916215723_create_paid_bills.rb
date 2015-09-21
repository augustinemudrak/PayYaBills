class CreatePaidBills < ActiveRecord::Migration
  def change
    create_table :paid_bills do |t|
      t.string :bill_name
      t.integer :amount_paid
      t.string :date_paid
      t.integer :bill_paid_id

      t.timestamps null: false
    end
  end
end
