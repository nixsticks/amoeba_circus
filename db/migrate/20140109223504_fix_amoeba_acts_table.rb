class FixAmoebaActsTable < ActiveRecord::Migration
  def change
    create_table :amoeba_acts, id: false do |t|
      t.belongs_to :amoeba
      t.belongs_to :act
    end
  end
end
