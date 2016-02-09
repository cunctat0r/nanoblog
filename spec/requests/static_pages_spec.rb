require 'rails_helper'



describe "Static pages" do 
	let(:page_title) {"Ruby on Rails Tutorial Sample App"}
	subject {page}

	describe "Home page" do
		before {visit home_path} 
		it {should have_content('Sample App')}
		it {should have_title("#{page_title} | Home")}		
	end

	describe "Help page" do 
		before {visit help_path}
		it {should have_content('Help')}
		it {should have_title("#{page_title} | Help")}		
	end

	describe "About page" do 
		before {visit about_path}
		it {should have_content('About Us')}
		it {should have_title("#{page_title} | About")}		
	end

	describe "Contact page" do 
		before {visit contact_path}
		it {should have_content('Contact Us')}
		it {should have_title("#{page_title} | Contact")}		
	end

	it "should have the right links on the layout" do
	    visit root_path
	    click_link "About"
	    expect(page).to have_title('About')
	    click_link "Help"
	    expect(page).to have_title('Help')
	    click_link "Contact"
	    expect(page).to have_title('Contact')
	    click_link "Home"
	    click_link "Sign up now!"
	    expect(page).to have_title('Sign up')
	    click_link "sample app"
	    expect(page).to have_title('Home')
	end

end