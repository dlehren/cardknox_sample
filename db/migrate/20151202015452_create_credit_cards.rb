class CreateCreditCards < ActiveRecord::Migration
  def change
    create_table :credit_cards do |t|
      t.string :response

      t.timestamps null: false
    end
  end
end
