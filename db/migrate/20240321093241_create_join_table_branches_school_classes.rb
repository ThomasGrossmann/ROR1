class CreateJoinTableBranchesSchoolClasses < ActiveRecord::Migration[7.1]
  def change
    create_join_table :branches, :school_classes do |t|
      t.index [:branch_id, :school_class_id]
      t.index [:school_class_id, :branch_id]
    end
  end
end
