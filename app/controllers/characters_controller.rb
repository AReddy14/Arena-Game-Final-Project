class CharactersController < ApplicationController


	def create(name, character_class)
		# come up with standard stats for each class: Warrior, Rogue, Paladin, Wizard, Cleric
		@characters << Character.new
		@characters.last.name = name
		@characters.last.type = "player"
		@characters.last.job = character_class
		@characters.last.level = 1
		case character_class # Brute force method change each stat one at a time
		when "Cleric"
			@characters.last.strength = 8
			@characters.last.dexterity = 11
			@characters.last.intelligence = 15
			@characters.last.health = 150
			@characters.last.mana = 80
		when "Paladin"
			@characters.last.strength = 10
			@characters.last.dexterity = 10
			@characters.last.intelligence = 7
			@characters.last.health = 300
			@characters.last.mana = 30
		when "Rogue"
			@characters.last.strength = 8
			@characters.last.dexterity = 18
			@characters.last.intelligence = 7
			@characters.last.health = 140
			@characters.last.mana = 35
		when "Warrior"
			@characters.last.strength = 13
			@characters.last.dexterity = 10
			@characters.last.intelligence = 7
			@characters.last.health = 150
			@characters.last.mana = 30
		when "Wizard"
			@characters.last.strength = 7
			@characters.last.dexterity = 10
			@characters.last.intelligence = 18
			@characters.last.health = 120
			@characters.last.mana = 80
		end
	end

	def index(character_class)
		@characters = Character.all
	end
end