class RemoveDestroyFromEnrollment < ActiveRecord::Migration
  def change
    remove_column :enrollments, :destroy, :string
  end
end
