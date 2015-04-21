#ask for user information
#give correct answer

class TipCalculator

	def intro

		puts """
		Let's get.....

			   $$\\          $$$$$$$$\\ $$\\                                        $$\\    
			 $$$$$$\\        \\__$$  __|\\__|                                     $$$$$$\\  
			$$  __$$\\          $$ |   $$\\  $$$$$$\\   $$$$$$$\\ $$\\   $$\\       $$  __$$\\ 
			$$ /  \\__|         $$ |   $$ |$$  __$$\\ $$  _____|$$ |  $$ |      $$ /  \\__|
			\\$$$$$$\\           $$ |   $$ |$$ /  $$ |\\$$$$$$\\  $$ |  $$ |      \\$$$$$$\\  
			 \\___ $$\\          $$ |   $$ |$$ |  $$ | \\____$$\\ $$ |  $$ |       \\___ $$\\ 
			$$\\  \\$$ |         $$ |   $$ |$$$$$$$  |$$$$$$$  |\\$$$$$$$ |      $$\\  \\$$ |
			\\$$$$$$  |         \\__|   \\__|$$  ____/ \\_______/  \\____$$ |      \\$$$$$$  |
			 \\_$$  _/                     $$ |                $$\\   $$ |       \\_$$  _/ 
			   \\ _/                       $$ |                \\$$$$$$  |         \\ _/   
			                              \\__|                 \\______/                 
		"""
	end

	def ask_get(string)
		puts string
		amount = gets.chomp
		until amount =~ /\d+/
			puts string
			amount = gets.chomp
		end
		amount.to_f
	end

	def get_bill
		@bill = ask_get("What is the total amount of the bill?")
	end

	def get_tip_amount
		@tip_percentage = ask_get("What percentage would you like to tip?")
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

#need to have a calculator object
tip = TipCalculator.new
tip.intro
tip.get_bill
tip.get_tip_amount
tip.calc_tip
tip.total_bill
tip.output


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