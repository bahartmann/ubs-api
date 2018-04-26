class CreateUbs < ActiveRecord::Migration[5.2]
  def change
    create_table :ubs do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :phone
      t.decimal :geocode_lat
      t.decimal :geocode_long
      t.string :size
      t.string :adaptation_for_seniors
      t.string :medical_equipment

      t.timestamps
    end
  end
end
