class CreateErrors < ActiveRecord::Migration
  def change
    create_table :errors do |t|
      t.integer :obd_id
      t.text :obd_content
      t.integer :brand_id
      t.integer :model_id
      t.integer :construction_year

      t.timestamps
    end
  end
end
