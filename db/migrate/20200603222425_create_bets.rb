class CreateBets < ActiveRecord::Migration[6.0]
  def change
    create_table :bets do |t|
      t.references :user, null: false, foreign_key: true
      t.references :fight, null: false, foreign_key: true
      t.decimal :amount
      t.string :fighter
      t.string :odds
      t.string :bet_type
      t.boolean :correct_bet
    


      t.timestamps
    end
  end
end
