#ask for user information
#give correct answer

class TipCalculator

	def get_bill
		puts "What is the total amount of the bill?"
		@bill = gets.chomp
		until @bill =~ /\d+/
			puts "What is the total amount of the bill?"
			@bill = gets.chomp
		end
		@bill = @bill.to_f
	end

	def get_tip_amount
		puts "What percentage would you like to tip?"
		@tip_percentage = gets.chomp
		until @tip_percentage =~ /\d+/
			puts "What percentage would you like to tip?"
			@tip_percentage = gets.chomp
		end
		@tip_percentage = @tip_percentage.to_f
	end

	def calc_tip
		@tip_amount = @bill * (@tip_percentage/100)
		p @tip_amount
	end

	def total_bill
		@bill + @tip_amount
	end

	def output
		puts "Calculated tip is $#{@tip_amount}", "Your total is $#{total_bill}"
	end

end


def test
	#need to have a calculator object
	tip = TipCalculator.new
	tip.get_bill
	tip.get_tip_amount
	tip.calc_tip
	tip.total_bill
	tip.output
end

test


=begin
1. Get user input of total bill CHECK
	a. input a number
	b. consider float consider (to_s)
	c. make sure user is giving a number
2. Ask how much they want to tip
	a. input a tip amount
	b. consider float consider (to_s)
	c. make sure user is giving a number
3. Output the answer 
	a. Tip amount
	b. Total bill

=end