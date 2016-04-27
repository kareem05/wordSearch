class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :lesson_id
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
