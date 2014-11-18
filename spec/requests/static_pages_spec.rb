require 'spec_helper'

describe "Static Pages" do

  describe "Home page" do
    it "should have the content 'Sample App'" do
    	visit '/'  # visit is a capybara function
    	page.should have_content('Sample App') # page also capybara
    end
    it "should ahve the right title" do
    	visit '/'
    	page.should have_selector('title', :text => "ROR tut | Home")
    end
  end

  describe "About page" do
  	it "should have the content 'About Us'" do
  		visit '/about'
  		page.should have_content('About Us')
  	end
    it "should ahve the right title" do
    	visit '/about'
    	page.should have_selector('title', :text => "ROR tut")
    end
  end
end
