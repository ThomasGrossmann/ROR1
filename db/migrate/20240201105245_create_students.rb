class CreateStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.string :lastname
      t.string :firstname
      t.string :address
      t.string :postal_code
      t.string :city
      t.string :email
      t.string :phone
      t.integer :state, default: 0

      t.timestamps
    end
  end
end
