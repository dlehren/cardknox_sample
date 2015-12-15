class AddRefNumToPayment < ActiveRecord::Migration
  def change
    add_column :payments, :ref_num, :string
  end
end
