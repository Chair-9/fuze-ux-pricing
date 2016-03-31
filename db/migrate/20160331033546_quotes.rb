class Quotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :business_name
      t.string :state
      t.string :bm_business_type
      t.string :ecomm_business_type
      t.string :payment_methods
      t.decimal :annual_average_processing_volume
      t.decimal :average_sale_amount
      t.decimal :last_month_processing_volume
      t.decimal :last_month_processing_fees
      t.integer :chargebacks
    end
  end
end
