class CreateTeachers < ActiveRecord::Migration[7.1]
  def change
    create_table :teachers do |t|
      t.string :lastname
      t.string :firstname
      t.string :address
      t.string :postal_code
      t.string :city
      t.string :acronym
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
