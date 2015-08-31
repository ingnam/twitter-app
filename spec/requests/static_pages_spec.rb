require 'spec_helper'

describe "Static pages" do
  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title('Ruby on Rails Tutorial Twitter App | Home') }
  end

  describe "Help page" do
  	before { visit help_path }

  	it "should have the content 'Help'" do
  		expect(page).to have_content('Help')
  	end

  	it "should have the title 'Help'" do
    	expect(page).to have_title("Ruby on Rails Tutorial Twitter App | Help")
    end
  end

  describe "About page" do
  	before { visit about_path }

  	it "should have the content 'About us'" do
  		expect(page).to have_content('About Us')
  	end

  	it "should have the title 'About'" do
    	expect(page).to have_title("Ruby on Rails Tutorial Twitter App | About")
    end
  end
end
