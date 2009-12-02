module Bowling
	class Game
    def initialize
			@score = 0
		end

		def roll(pins)
			@score += pins
		end

		def score
			@score
		end
	end
end
