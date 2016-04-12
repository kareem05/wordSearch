class CreateTakingLessons < ActiveRecord::Migration
  def change
    create_table :taking_lessons do |t|
      t.integer :lesson_id
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
