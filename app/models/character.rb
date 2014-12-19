class Character < ActiveRecord::Base
	belongs_to :user

	def level_up
		# need better way to call up a character, currently only lets a person play one character and boost that one.
			@characters.last.strength = @characters.last.strength + rand(1..3)
			@characters.last.dexterity = @characters.last.dexterity + rand(1..3)
			@characters.last.intelligence = @characters.last.intelligence + rand(1..3)
			@characters.last.health = @characters.last.health + rand(10..20)
			@characters.last.mana = @characters.last.mana + rand(3..5)
	end
end