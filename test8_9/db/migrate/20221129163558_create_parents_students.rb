class CreateParentsStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :parents_students do |t|
      t.references :parent, foreign_key: true
      t.references :student, foreign_key: true
    end
  end
end
