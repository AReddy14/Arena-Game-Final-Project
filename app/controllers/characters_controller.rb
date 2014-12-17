class CharactersController < ApplicationController


	def new(character_class)
		# come up with standard stats for each class: Warrior, Rogue, Paladin, Wizard, Cleric
		case character_class
		when "Cleric"

		when "Paladin"
			
		when "Rogue"
			
		when "Warrior"
			
		when "Wizard"
			
		end
	end

	def index
		@characters = Character.all
	end
end