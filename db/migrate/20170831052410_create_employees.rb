class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :employee_id
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :mobile_number
      t.string :user_name
      t.string :password
      t.string :manager_id

      t.timestamps
    end
  end
end
