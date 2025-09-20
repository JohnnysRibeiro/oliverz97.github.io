class CreateStreak < ActiveRecord::Migration[8.0]
  def change
    create_table :streaks do |t|
      t.integer :user_id
      t.string :game_mode
      t.integer :days
      t.datetime :starts_at
      t.timestamps
    end
  end
end
