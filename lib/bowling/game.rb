module Bowling
  class RollCursor
		def initialize(rolls)
			@rolls = rolls
			@idx = 0
		end

		def strike?
			self.roll == 10
		end

    def spare?
      self.two_rolls == 10
		end

		def strike_bonus
			self.two_rolls_from(@idx+1)
		end

		def spare_bonus
			self.roll_at(@idx+2)
		end

		def roll
			self.roll_at(@idx)
		end

		def two_rolls
			self.two_rolls_from(@idx)
		end

		def next
			if self.strike?
				@idx += 1
			else
				@idx += 2
			end
		end

		def roll_at(index)
			@rolls[index]
		end

		def two_rolls_from(index)
      @rolls[index] + @rolls[index+1]
		end
	end

	class Game
    def initialize
			@rolls = []
		end

		def roll(pins)
			@rolls << pins
		end

		def score
      score = 0
			cur = RollCursor.new(@rolls)
			10.times do
				if cur.strike?
					score += cur.roll
					score += cur.strike_bonus
				elsif cur.spare?
					score += cur.two_rolls
					score += cur.spare_bonus
				else
					score += cur.two_rolls
				end
				cur.next
			end
			score
		end
	end
end
