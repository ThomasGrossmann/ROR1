class CreateBranches < ActiveRecord::Migration[7.1]
  def change
    create_table :branches do |t|
      t.string :name
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
