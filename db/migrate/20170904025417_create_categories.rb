class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :category_id
      t.string :category_id_s_name
      t.string :category_name

      t.timestamps
    end
  end
end
