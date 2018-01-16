class CreateParttypes < ActiveRecord::Migration[5.1]
  def change
    create_table :parttypes do |t|
      t.string :parttype_id
      t.string :parttype_name

      t.timestamps
    end
  end
end
