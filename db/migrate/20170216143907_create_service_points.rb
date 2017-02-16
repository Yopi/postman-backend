class CreateServicePoints < ActiveRecord::Migration[5.0]
  def change
    create_table :service_points do |t|
      t.string :name, null: false
      t.decimal :longitude, null: false
      t.decimal :latitude, null: false

      t.timestamps
    end
  end
end
