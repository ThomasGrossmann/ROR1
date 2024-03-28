class CreateExams < ActiveRecord::Migration[7.1]
  def change
    create_table :exams do |t|
      t.string :theme
      t.date :date
      t.references :branch, null: false, foreign_key: true

      t.timestamps
    end
  end
end
