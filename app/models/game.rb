class Game < ActiveRecord::Base

	def attack(attacker_str, attacker_dex, target_type) # should be from opposites as implied if player is attacking take player str and enemy health, general trend for all of them.
		if target_type == "monster"
			return current_health_enemy = current_health_enemy - (attacker_str * (attacker_dex/10))
		elsif target_type == "player"
			return current_health_character = current_health_character - (attacker_str * (attacker_dex/10))
		end
	end

	def defend(enemy_str, enemy_dex) # This is going to be inside of the attack method. An if statement will determine if defend has been invoked by the player character. only can be used by player
		return current_health_character = current_health_character - (((attacker_str * (attacker_dex/10))/2)
	end

	def magic(caster_intelligence, target_type, spell_name) # Don't have elemental weaknesses set up
		if target_type == "monster"
			case spell_name
			when "Fire" # 1.5 damage for now, relatively low cost
				current_mana_character = current_mana_character - 6
				return current_health_enemy = current_health_enemy - (caster_intelligence + caster_intelligence/2)

			when "Blizzard" # basic spell for now
				current_mana_character = current_mana_character - 4
				return current_health_enemy = current_health_enemy - (caster_intelligence)

			when "Thunder" # heavy hitter, expensive
				current_mana_character = current_mana_character - 10
				return current_health_enemy = current_health_enemy - (caster_intelligence * 2)

			end

		elsif target_type == "player"
			case spell_name
			when "Fire"
				current_mana_enemy = current_mana_enemy - 6
				return current_health_character = current_health_character - (caster_intelligence + caster_intelligence/2)

			when "Blizzard"
				current_mana_enemy = current_mana_enemy - 4
				return current_health_character = current_health_character - (caster_intelligence)

			when "Thunder"
				current_mana_enemy = current_mana_enemy - 10
				return current_health_character = current_health_character - (caster_intelligence * 2)

			when "Cure"
				current_mana_character = current_mana_character - 6
				current_health_character = current_health_character + caster_intelligence

			end
		end
	end

	def skill(attacker_str, attacker_dex, target_type, skill_name)
		case skill_name
		when "Multi-Strike" # strikes enemy 3-7 extra times for significant increase in damage
			current_mana_character = current_mana_character - 15
			return current_health_enemy = current_health_enemy - (attacker_str * (attacker_dex/10 + rand(3..7)))
		when "Power Strike" # literally doubles your power for 1 round of combat before hitting the other guy
			current_mana_character = current_mana_character - 10
			return current_health_enemy = current_health_enemy - (attacker_str * (attacker_dex/10) * 2)
		end
	end
end