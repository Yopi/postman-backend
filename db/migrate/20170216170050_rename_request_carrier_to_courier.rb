class RenameRequestCarrierToCourier < ActiveRecord::Migration[5.0]
  def change
    rename_column :requests, :carrier_id, :courier_id
  end
end
