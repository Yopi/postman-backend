class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.integer :parcel_id, null: false
      t.integer :owner_id, null: false
      t.integer :carrier_id
      t.integer :price, null: false
      t.string :address, null: false
      t.boolean :accepted, null: false, default: false

      t.timestamps
    end
  end
end
