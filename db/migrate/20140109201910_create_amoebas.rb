class CreateAmoebas < ActiveRecord::Migration
  def change
    create_table :amoebas do |t|
      t.string :name
      t.integer :generation
      t.integer :talent_id

      t.timestamps
    end
  end
end
