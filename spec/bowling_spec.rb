require_relative '../bowling'

describe 'bowling score' do
	it 'returns nil if given nil' do
		bowling = Bowling.new
		expect(bowling.score(nil)).to be_nil
	end

	it 'returns 0 if given no rolls' do
		bowling = Bowling.new
		expect(bowling.score("")).to be_zero
	end

	it 'returns 1 if given a string with 1' do
		bowling = Bowling.new
		expect(bowling.score("1")).to eq(1)
	end

	it 'returns 3 if given a string with 3' do
		bowling = Bowling.new
		expect(bowling.score("3")).to eq(3)
	end

	it 'returns 10 if given a string with X' do
		bowling = Bowling.new
		expect(bowling.score("X")).to eq(10)
	end

	it 'returns 7 if given a string containing a frame with "34"' do
		bowling = Bowling.new
		expect(bowling.score("34")).to eq(7)
	end

	it 'returns 10 if given a string containing a frame with "3/"' do
		bowling = Bowling.new
		expect(bowling.score("3/")).to eq(10)
	end

	it 'returns 14 if given a string containing a frame with "34 34"' do
		bowling = Bowling.new
		expect(bowling.score("34 34")).to eq(14)
	end

	it 'returns 21 if given a string containing a frame with "3/ 43"' do
		bowling = Bowling.new
		expect(bowling.score("3/ 43")).to eq(21)
	end

end




