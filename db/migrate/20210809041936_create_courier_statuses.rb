class CreateCourierStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :courier_statuses do |t|
      t.integer :status_code
      t.string :status
      t.references :courier_detail, null: false, foreign_key: true

      t.timestamps
    end
  end
end
