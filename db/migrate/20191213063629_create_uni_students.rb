class CreateUniStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :uni_students do |t|
      t.string :first_name
      t.string :last_name
      t.decimal :gpa
      t.string :university

      t.timestamps
    end
  end
end
