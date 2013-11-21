require 'spec_helper'

describe "Static pages" do

	describe "AboutMe page" do

		it "should have the content 'About Me'" do
			visit '/static_pages/aboutMe'
			page.should have_selector('h1', :text => 'About Me')
		end

		it "should have the right title" do
			visit '/static_pages/aboutMe'
			page.should have_selector('title',
									  :text => " | About Me")
		end
	end

	describe "AboutWebsite page" do

		it "should have the content 'About This Website'" do
			visit '/static_pages/aboutWebsite'
			page.should have_selector('h1', :text => 'About This Website')
		end

		it "should have the right title" do
			visit '/static_pages/aboutWebsite'
			page.should have_selector('title',
									  :text => " | About This Website")
		end
	end
end