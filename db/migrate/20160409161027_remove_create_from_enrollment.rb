class RemoveCreateFromEnrollment < ActiveRecord::Migration
  def change
    remove_column :enrollments, :create, :string
  end
end
