require 'spec_helper'

describe "Static Pages" do

  describe "Home page" do
    it "should have the content 'Sample App'" do
    	visit '/static_pages/home'  # visit is a capybara function
    	page.should have_content('Sample App') # page also capybara
    end
    it "should ahve the right title" do
    	visit '/static_pages/home'
    	page.should have_selector('title', :text => "ROR tut | Home")
    end
  end

  describe "About page" do
  	it "should have the content 'About Us'" do
  		visit '/static_pages/about'
  		page.should have_content('About Us')
  	end
    it "should ahve the right title" do
    	visit '/static_pages/about'
    	page.should have_selector('title', :text => "ROR tut | About")
    end
  end
end
