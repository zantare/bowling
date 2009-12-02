前提 /^ゲームを開始する$/ do
	@game = Bowling::Game.new
end

もし /^(\d+)ピン倒す$/ do |pins|
	@game.roll(pins.to_i)
end

もし /^ストライクをとる$/ do
	@game.roll(10)
end

もし /^残りの投球(\d+)球がすべてガターである$/ do |roll_num|
	roll_num.to_i.times { @game.roll(0) }
end

もし /^すべての投球が(\d+)ピンである$/ do |pins|
  20.times { @game.roll(pins.to_i) }
end

もし /^すべての投球がガターである$/ do
	もし "すべての投球が0ピンである"
end

ならば /^スコアは(\d+)点であること$/ do |score|
	@game.score.should equal(score.to_i)
end
