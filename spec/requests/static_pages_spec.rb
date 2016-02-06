require 'rails_helper'



describe "Static pages" do 
	let(:page_title) {"Ruby on Rails Tutorial Sample App"}

	describe "Home page" do 
		it "should have the content 'Sample App'" do
			visit home_path
			expect(page).to have_content('Sample App')
		end

		it "should have the right title" do
  			visit home_path
  			expect(page).to have_title("#{page_title} | Home")
		end
	end

	describe "Help page" do 
		it "should have the content 'Help'" do
			visit help_path
			expect(page).to have_content('Help')
		end

		it "should have the right title" do
  			visit help_path
  			expect(page).to have_title("#{page_title} | Help")
		end
	end

	describe "About page" do 
		it "should have the content 'About Us'" do
			visit about_path
			expect(page).to have_content('About Us')
		end

		it "should have the right title" do
  			visit about_path
  			expect(page).to have_title("#{page_title} | About")
		end
	end

	describe "Contact page" do 
		it "should have the content 'Contact Us'" do
			visit contact_path
			expect(page).to have_content('Contact Us')
		end

		it "should have the right title" do
  			visit contact_path
  			expect(page).to have_title("#{page_title} | Contact")
		end
	end
end