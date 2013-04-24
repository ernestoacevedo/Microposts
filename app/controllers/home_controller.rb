class HomeController < ApplicationController
	def index
		@microposts = Micropost.all
		render 'home/index'
	end
end
