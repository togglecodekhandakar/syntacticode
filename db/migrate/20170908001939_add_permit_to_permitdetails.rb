class AddPermitToPermitdetails < ActiveRecord::Migration[5.1]
  def change
    add_reference :permitdetails, :permit, foreign_key: true
  end
end
