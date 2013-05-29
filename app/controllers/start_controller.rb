class StartController < ApplicationController
	layout nil
  	layout 'application', :except => :view
  	def index
  		render 'start/index'
  	end
end
