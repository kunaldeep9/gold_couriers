class CreateCourierDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :courier_details do |t|
      t.string :sender_name
      t.text :sender_address
      t.integer :sender_contact
      t.integer :sender_pincode
      t.string :receiver_name
      t.text :receiver_address
      t.integer :receiver_contact
      t.integer :receiver_pincode
      t.integer :parcel_weight
      t.string :service_type
      t.float :service_cost
      t.string :payment_mode
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
