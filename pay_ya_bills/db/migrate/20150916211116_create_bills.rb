class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.integer :min_pay
      t.string :bill_name
      t.string :link
      t.string :payment_data
      t.integer :bill_id
      t.boolean :paid

      t.timestamps null: false
    end
  end
end
