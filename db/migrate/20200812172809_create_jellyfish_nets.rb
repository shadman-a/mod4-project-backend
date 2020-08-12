class CreateJellyfishNets < ActiveRecord::Migration[6.0]
  def change
    create_table :jellyfish_nets do |t|
      t.integer :timeout
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
