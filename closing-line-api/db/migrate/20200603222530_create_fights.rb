class CreateFights < ActiveRecord::Migration[6.0]
  def change
    create_table :fights do |t|
      t.references :event, null: false, foreign_key: true
      t.string :competitor_one
      t.string :competitor_two
      t.integer :rounds
      t.string :result

      t.timestamps
    end
  end
end
