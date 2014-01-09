class CreateJoinTableActAmoeba < ActiveRecord::Migration
  def change
    create_join_table :acts, :amoebas do |t|
      # t.index [:customer_id, :product_id]
      # t.index [:product_id, :customer_id]
    end
  end
end
