class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :question_id
      t.string :question_text
      t.string :options

      t.timestamps
    end
  end
end
