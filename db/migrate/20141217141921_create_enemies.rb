class CreateEnemies < ActiveRecord::Migration
  def change
    create_table :enemies do |t|
      t.string :name
      t.string :type
      t.integer :level
      t.integer :strength
      t.integer :dexterity
      t.integer :intelligence
      t.integer :health
      t.integer :mana
    end
  end
end
