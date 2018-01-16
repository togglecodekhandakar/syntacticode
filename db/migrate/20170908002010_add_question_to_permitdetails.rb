class AddQuestionToPermitdetails < ActiveRecord::Migration[5.1]
  def change
    add_reference :permitdetails, :question, foreign_key: true
  end
end
