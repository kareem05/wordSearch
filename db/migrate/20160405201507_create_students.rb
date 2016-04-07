class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.text :words

      t.timestamps null: false
    end
  end
end
