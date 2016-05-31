class CreateTries < ActiveRecord::Migration
  def change
    create_table :tries do |t|
      t.integer :frame_id
      t.index :frame_id
      t.integer :score
      t.integer :sort
      t.index :sort

      t.timestamps null: false
    end
  end
end
