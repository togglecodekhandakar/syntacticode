class AddCategoryToPermits < ActiveRecord::Migration[5.1]
  def change
    add_reference :permits, :category, foreign_key: true
  end
end
