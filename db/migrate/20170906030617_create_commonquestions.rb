class CreateCommonquestions < ActiveRecord::Migration[5.1]
  def change
    create_table :commonquestions do |t|
      t.string :commonquestion_id
      t.string :question_text
      t.string :options
      t.string :answer_option_number

      t.timestamps
    end
  end
end
