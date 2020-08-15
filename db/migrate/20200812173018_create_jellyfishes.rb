class CreateJellyfishes < ActiveRecord::Migration[6.0]
  def change
    create_table :jellyfishes do |t|
      t.integer :points
      t.string :image

      t.timestamps
    end
  end
end
