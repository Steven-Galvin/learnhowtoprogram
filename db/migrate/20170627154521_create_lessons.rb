class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.column :title, :string
      t.column :content, :text
      t.column :week_id, :integer
      t.column :day, :string
      t.column :lesson_type, :string
      t.column :lesson_number, :integer
      t.timestamps
    end
  end
end
