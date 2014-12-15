class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :current_health_character
      t.integer :current_health_enemy
      t.integer :current_mana_character
      t.integer :current_mana_enemy
    end
  end
end
