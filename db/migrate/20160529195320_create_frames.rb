class CreateFrames < ActiveRecord::Migration
  def change
    create_table :frames do |t|
      t.integer :game_id
      t.index :game_id
      t.integer :status

      t.timestamps null: false
    end
  end
end
