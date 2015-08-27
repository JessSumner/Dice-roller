class RollsController < ApplicationController
	def new
	end

	def create
		@sides = params[:sides].to_i
		@number = params[:number].to_i
		@result = roll_dice(@sides, @number)
	end

	def roll_dice(sides, number)
		(1..number).map do
			roll_die(sides)
		end
	end

	def roll_die(sides)
		rand(1..sides)
	end		
end
