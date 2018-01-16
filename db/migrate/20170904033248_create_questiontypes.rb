class CreateQuestiontypes < ActiveRecord::Migration[5.1]
  def change
    create_table :questiontypes do |t|
      t.string :questiontype_id
      t.string :questiontype_name

      t.timestamps
    end
  end
end
