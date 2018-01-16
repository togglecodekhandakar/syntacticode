class CreatePermits < ActiveRecord::Migration[5.1]
  def change
    create_table :permits do |t|
      t.string :permitid
      t.string :permit
      t.string :filename

      t.timestamps
    end
  end
end
