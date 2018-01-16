class AddQuestiontypeToCommonquestions < ActiveRecord::Migration[5.1]
  def change
    add_reference :commonquestions, :questiontype, foreign_key: true
  end
end
