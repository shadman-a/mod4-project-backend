class CreateCatches < ActiveRecord::Migration[6.0]
  def change
    create_table :catches do |t|
      t.integer :character_id
      t.integer :jellyfish_id

      t.timestamps
    end
  end
end
