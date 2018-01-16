class AddQuestionToCommonquestions < ActiveRecord::Migration[5.1]
  def change
    add_reference :commonquestions, :question, foreign_key: true
  end
end
