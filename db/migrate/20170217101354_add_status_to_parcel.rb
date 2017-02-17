class AddStatusToParcel < ActiveRecord::Migration[5.0]
  def change
    add_column :parcels, :status, :string
  end
end
