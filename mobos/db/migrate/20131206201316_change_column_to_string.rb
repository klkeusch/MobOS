class ChangeColumnToString < ActiveRecord::Migration
  def change
     change_column :errors, :obd_id, :string
  end

 
end
