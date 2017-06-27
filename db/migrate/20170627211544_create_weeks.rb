class CreateWeeks < ActiveRecord::Migration[5.1]
  def change
    create_table :weeks do |t|
      t.column :title, :string
      t.column :week_number, :integer
      t.column :course_id, :integer

      t.timestamps
    end
  end
end
