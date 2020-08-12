class CreateGamePlays < ActiveRecord::Migration[6.0]
  def change
    create_table :game_plays do |t|
      t.integer :character_id
      t.integer :user_id
      t.integer :score

      t.timestamps
    end
  end
end
