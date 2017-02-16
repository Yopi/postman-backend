class AddStatusToRequest < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :status_message, :string, default: ''
    add_column :requests, :picked_up, :boolean, default: false
    add_column :requests, :delivered, :boolean, default: false
  end
end
