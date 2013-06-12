require 'spec_helper'

describe "Contactos" do
  describe "GET /contactos" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get '/contacto/index'
      response.status.should be(200)
    end
  end
  describe "Contact Info" do
  	it "should have the content 'Contacto'" do
  		visit '/contacto/index'
  		page.should have_content('Contacto')
  	end
  end
  describe "Contact Title" do
  	it "should have the title 'Microposts | Contacto'" do
  		visit '/contacto/index'
  		page.should have_selector('title',:text=> "Microposts | Contacto")
  	end
  end
end
