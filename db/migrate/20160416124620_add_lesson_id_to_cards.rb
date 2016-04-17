class AddLessonIdToCards < ActiveRecord::Migration
  def change
    add_column :cards, :lesson_id, :integer
  end
end
