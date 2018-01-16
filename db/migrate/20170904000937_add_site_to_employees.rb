class AddSiteToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_reference :employees, :site, foreign_key: true
  end
end
