class RemoveStudentIdFromAssignment < ActiveRecord::Migration
  def change
    remove_column :assignments, :student_id, :integer
  end
end
