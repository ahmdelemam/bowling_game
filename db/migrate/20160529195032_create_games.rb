class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :gamer_name
      t.integer :score, default: 0

      t.timestamps null: false
    end
  end
end
