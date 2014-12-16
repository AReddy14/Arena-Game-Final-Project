class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.integer :level
      t.integer :strength
      t.integer :dexterity
      t.integer :intelligence
      t.integer :health
      t.integer :mana
    end
  end
end
