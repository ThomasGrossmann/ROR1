class CreateSchoolClassesStudents < ActiveRecord::Migration[7.1]
  def change
    create_join_table :school_classes, :students do |t|
      t.index [:school_class_id, :student_id]
    end
  end
end
