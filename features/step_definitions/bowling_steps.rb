前提 /^ゲームを開始する$/ do
	@game = Bowling::Game.new
end

もし /^(\d+)ピン倒す$/ do |pins|
	@game.roll(pins.to_i)
end

もし /^ストライクをとる$/ do
	もし "10ピン倒す"
end

もし /^スペアをとる$/ do
	もし "5ピン倒す"
	もし "5ピン倒す"
end

もし /^残りの投球(\d+)球がすべてガターである$/ do |roll_num|
	roll_num.to_i.times do
		もし "0ピン倒す" 
	end
end

もし /^すべての投球が(\d+)ピンである$/ do |pins|
	20.times do
		もし "#{pins}ピン倒す"
	end
end

もし /^すべての投球がガターである$/ do
	もし "すべての投球が0ピンである"
end

ならば /^スコアは(\d+)点であること$/ do |score|
	@game.score.should equal(score.to_i)
end
