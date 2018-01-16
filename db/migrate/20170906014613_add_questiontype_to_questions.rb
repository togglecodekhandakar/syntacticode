class AddQuestiontypeToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_reference :questions, :questiontype, foreign_key: true
  end
end
