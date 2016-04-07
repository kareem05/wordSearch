class AddWordsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :words, :text
  end
end
