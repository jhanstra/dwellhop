require 'spec_helper'

describe "Static Pages" do

  describe "Home page" do

    it "should have the content 'Home'" do
      visit '/static/home'
      expect(page).to have_content('Home')
    end
    it "should have the right title" do
	  visit '/static/home'
      expect(page).to have_title("Dwellhop")
	end
	it "should not have a custom page title" do
      visit '/static/home'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "About page" do

    it "should have the content 'About'" do
      visit '/static/about'
      expect(page).to have_content('About')
    end
    it "should have the right title" do
	  visit '/static/about'
	  expect(page).to have_title("Dwellhop | About")
	end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static/help'
      expect(page).to have_content('Help')
    end
    it "should have the right title" do
	  visit '/static/help'
	  expect(page).to have_title("Dwellhop | Help")
	end
  end
end