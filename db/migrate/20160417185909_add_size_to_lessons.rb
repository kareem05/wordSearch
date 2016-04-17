class AddSizeToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :size, :integer
  end
end
