class DropCreditCards < ActiveRecord::Migration
  def change

    drop_table :credit_cards do |t|
      t.string   "response"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
  
end
