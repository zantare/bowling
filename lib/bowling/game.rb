module Bowling
	class Game
    def initialize
			@rolls = []
		end

		def roll(pins)
			@rolls << pins
		end

		def score
      score = 0
			roll_idx = 0
			10.times do
				if roll_at(roll_idx) == 10 #strike
			    score += roll_at(roll_idx) # pins
					score += strike_bonus(roll_idx)
					roll_idx += 1
				elsif two_rolls_from(roll_idx) == 10 #spare
					score += two_rolls_from(roll_idx) #pins
					score += spare_bonus(roll_idx)
					roll_idx += 2
				else
					score += two_rolls_from(roll_idx) #pins
					roll_idx += 2
				end
			end
			score
		end

		private
		def strike_bonus(idx)
			two_rolls_from(idx+1)
		end

		def spare_bonus(idx)
			roll_at(idx+2)
		end

		def roll_at(idx)
			@rolls[idx]
		end

		def two_rolls_from(idx)
			@rolls[idx] + @rolls[idx+1]
		end
	end
end
