class CreateSchoolClasses < ActiveRecord::Migration[7.1]
  def change
    create_table :school_classes do |t|
      t.string :name
      t.string :school_year
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
