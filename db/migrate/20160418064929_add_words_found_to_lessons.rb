class AddWordsFoundToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :words_found, :string
  end
end
