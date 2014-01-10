class FixJoinTable < ActiveRecord::Migration
  def change
    drop_table :acts_amoebas
    create_join_table :amoebas, :acts do |t|
    end
  end
end
