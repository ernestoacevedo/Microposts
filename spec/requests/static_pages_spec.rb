require 'spec_helper'

describe "StaticPages" do
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get static_pages_index_path
      response.status.should be(200)
    end
  end
  describe "GET /static_pages/contact" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get '/static_pages/contact'
      response.status.should be(200)
    end
  end
  describe "Contact Info" do
  	it "should have the content 'Contacto'" do
  		visit '/static_pages/contact'
  		page.should have_content('Contacto')
  	end
  end
  describe "Contact Title" do
  	it "should have the title 'Microposts | Contacto'" do
  		visit '/static_pages/contact'
  		page.should have_selector('title',:text=> "Microposts | Contacto")
  	end
  end
  describe "Start Title" do
  	it "should have the title 'Microposts | Bienvenido'" do
  		visit '/static_pages/start'
  		page.should have_selector('title',:text=> "Microposts | Bienvenido")
  	end
  end
  describe "Validates title" do
  	let(:title)
  	it "should have the appropiate title" do
  		visit '/static_pages/contact'
  		page.should have_selector('title',:text=> "Microposts | Contacto")
  	end
  end
end
