class FixTablesAgain < ActiveRecord::Migration
  def change
    drop_table :acts_amoebas
    
    create_table :amoeba_acts do |t|
      t.belongs_to :amoeba
      t.belongs_to :act
    end
  end
end
