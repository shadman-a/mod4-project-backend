class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :image
      t.string :sound

      t.timestamps
    end
  end
end
