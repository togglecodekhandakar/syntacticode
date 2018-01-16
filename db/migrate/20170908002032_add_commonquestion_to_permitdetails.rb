class AddCommonquestionToPermitdetails < ActiveRecord::Migration[5.1]
  def change
    add_reference :permitdetails, :commonquestion, foreign_key: true
  end
end
