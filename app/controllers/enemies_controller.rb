class EnemiesController < ApplicationController
	before_action :index, only: [:create]
	def index
		# do I want an array of enemies?
	end

	def create(player_level)
		@enemies << Enemy.new
		@enemies.last.type = "monster"
		@enemies.last.level = player_level
		@enemies.last.strength = 6 + (rand(1..3)*(player_level - 1))
		@enemies.last.dexterity = 10 + (rand(1..3)*(player_level - 1))
		@enemies.last.intelligence = 6 + (rand(1..3)*(player_level - 1))
		@enemies.last.health = 160 + (rand(10..20)*(player_level - 1))
		@enemies.last.mana = 45 + (rand(3..5)*(player_level - 1))
	end
end