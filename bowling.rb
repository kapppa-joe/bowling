class Bowling
	def score(rolls)
		return nil if rolls.nil?
		return 10 if rolls == 'X'

		if rolls.length == 2
			array = rolls.split('')
			total = 0
			if array[1] == '/'
				total = 10
			else
				array.each do |string|
					total += string.to_i
				end
			end
		end

		if rolls.length > 2
			frames = rolls.split(' ')
			total = 0
			frames.each do |frame|
				array = frame.split('')
					if array[1] == '/'
						total += 10
					end	
				
				array.each do |string|
					total += string.to_i
				end
			end

			return total	
	end


		return rolls.to_i
	end
end
