class CreateBets < ActiveRecord::Migration[7.1]
  def change
    create_table :bets do |t|
      t.datetime :expiration
      t.string :description
      t.references :owner, null: false
      t.references :better 
      t.boolean :settled

      t.timestamps
    end
  end
end
