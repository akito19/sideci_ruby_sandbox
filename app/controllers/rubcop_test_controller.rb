class RubocopController  < ApplicationController
	def initialize
		print "this is so bad patern"
	end

	def print_fib(range)
		range.each do |n|
			p fib(n)
		end
	end

	private
		def fib(n)
			return 1 if n <= 1
			fib(n-2) + fib(n-1)
		end
end