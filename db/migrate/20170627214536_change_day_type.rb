class ChangeDayType < ActiveRecord::Migration[5.1]
  def up
      change_column :lessons, :day, :string
    end

  def down
    change_column :lessons, :day, :integer
  end
end
