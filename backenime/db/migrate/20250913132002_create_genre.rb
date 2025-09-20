class CreateGenre < ActiveRecord::Migration[8.0]
  def change
    create_table :genres do |t|
      t.string :name
      t.integer :genre_type
      t.timestamps
    end
  end
end
