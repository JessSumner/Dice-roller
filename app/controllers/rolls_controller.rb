class RollsController < ApplicationController

	def new
	end

	def create
		@sides = params[:sides].to_i
		@number = params[:number].to_i
		@result = roll_dice(@sides, @number)
	end

	def roll_dice(sides, number)
		#if valid?
			(1..number).map do
				roll_die(sides)
			end
		#else
			#flash[:danger] = "Die must have at least 3 sides and no more than 30. You may only roll up to 30 dice."
		#end
	end

	def roll_die(sides)
		rand(1..sides)
	end

	#def valid_die
		#@sides = params[:sides].to_i
		#@sides = {3..31}
	#end

	#def valid?
		#@sides = params[:sides].to_i
		#@sides == (3..30)
	#end		
end
