class CreateSemesters < ActiveRecord::Migration[7.1]
  def change
    create_table :semesters do |t|
      t.date :start_date
      t.date :end_date
      t.integer :number

      t.timestamps
    end
  end
end
