class AddSenderToParcel < ActiveRecord::Migration[5.0]
  def change
    add_column :parcels, :sender, :string, default: ''
  end
end
