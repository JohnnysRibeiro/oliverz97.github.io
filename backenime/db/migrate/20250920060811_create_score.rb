class CreateScore < ActiveRecord::Migration[8.0]
  def change
    create_table :scores do |t|
      t.integer :user_id
      t.string :game_mode
      t.integer :points
      t.datetime :date
      t.timestamps
    end
  end
end
