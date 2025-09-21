class CreateCharacter < ActiveRecord::Migration[8.0]
  def change
    create_table :characters do |t|
      t.string :label
      t.string :name
      t.string :sex
      t.string :origin
      t.string :hair_color
      t.integer :age
      t.string :age_group
      t.integer :height
      t.string :eye_color
      t.integer :anime_id
      t.string :birthday
      t.string :difficulty
      t.string :version
      t.timestamps
    end
  end
end
