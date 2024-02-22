class CreateBranchesTeachers < ActiveRecord::Migration[7.1]
  def change
    create_join_table :branches, :teachers do |t|
      t.index [:branch_id, :teacher_id]
    end
  end
end
