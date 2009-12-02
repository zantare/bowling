require File.join(File.dirname(__FILE__), "..", "spec_helper")

module Bowling
  describe Game do
		context "すべてガターの場合" do
			before do
				@game = Game.new
				20.times { @game.roll(0) }
			end

			describe "#score" do
				subject { @game.score }
				it { should equal(0) }
			end
		end
     
		context "すべて1ピンの場合" do
			before do
				@game = Game.new
				20.times { @game.roll(1) }
			end

			describe "#score" do
				subject { @game.score }
				it { should equal(20) }
			end
		end

		context "ストライクを含む場合" do
			before do
				@game = Game.new
				@game.roll(10) #strike
				@game.roll(3)
				@game.roll(4)
				16.times { @game.roll(0) }
			end

			describe "#score" do
				subject { @game.score }
				it { should equal(24) }
			end
		end
	end
end
		 
