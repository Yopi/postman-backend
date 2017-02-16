class CreateParcels < ActiveRecord::Migration[5.0]
  def change
    create_table :parcels do |t|
      t.integer :user_id, null: false
      t.integer :service_point_id, null: false
      t.integer :weight, null: false
      t.string :size, null: false

      t.timestamps
    end
  end
end
