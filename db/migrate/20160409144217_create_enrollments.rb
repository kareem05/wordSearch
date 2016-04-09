class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.integer :teacher_id
      t.integer :student_id
      t.string :create
      t.string :destroy

      t.timestamps null: false
    end
  end
end
