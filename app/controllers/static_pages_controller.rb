class StaticPagesController < ApplicationController
  def home
  	@title = 'Home'
  	render 'static_pages/home'
  end

  def help
  	@title = 'Help'
  	render 'static_pages/help'
  end

  def about
  	@title = 'About'
  	render 'static_pages/about'
  end
end
