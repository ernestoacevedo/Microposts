require 'spec_helper'

describe "Home" do
  describe "GET /static_pages" do
    it "debe tener el contenido 'Aplicacion de Ejemplo'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_content('Aplicacion de Ejemplo')
    end
    it "should have the title 'Home'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_selector('title',:text=> "ROR Demo App | Home")
    end
  end
  describe "About" do
  	it "should have the content 'About Us'" do
  		visit '/static_pages/about'
  		page.should have_content('About Us')
  	end
  	it "should have the title 'About" do
  		visit '/static_pages/about'
  		page.should have_selector('title',:text=> "ROR Demo App | About")
  	end
  end
  describe "Help" do
  	it "should have the title 'About'" do
  		visit '/static_pages/help'
  		page.should have_selector('title',:text=> "ROR Demo App | Help")
  	end
  end
end
