class RemoveTeacherIdFromEnrollment < ActiveRecord::Migration
  def change
    remove_column :enrollments, :teacher_id, :integer
  end
end
