class CreateBranchesStudents < ActiveRecord::Migration[7.1]
  def change
    create_join_table :branches, :students do |t|
      t.index [:branch_id, :student_id]
    end
  end
end
