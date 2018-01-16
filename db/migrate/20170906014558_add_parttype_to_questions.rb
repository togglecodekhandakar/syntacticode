class AddParttypeToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_reference :questions, :parttype, foreign_key: true
  end
end
