class RemoveContentFromCards < ActiveRecord::Migration
  def change
    remove_column :cards, :content, :text
  end
end
