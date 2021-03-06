require 'rails_helper'

feature "Creating Tickets" do
	before do
		project = FactoryGirl.create(:project, name: "Internet Explorer")
				user = FactoryGirl.create(:user)

				
		visit '/'
		click_link "Internet Explorer"
		click_link "New Ticket"
	end

	scenario "Creating a ticket" do 
		fill_in "ticket[title]", with: "Non-standards compliance"
		fill_in "ticket[description]", with: "My pages are ugly!"
		click_button "Create Ticket"
		expect(page).to have_content("Ticket has been created. ")
		   
		    	within("ticket #author") do
					expect(page).to have_content("Created by #{user.email}")
				end
	end

	scenario "Creating a ticket without valid attributes fails" do
		click_button "Create Ticket"
		expect(page).to have_content("Ticket has not been created.")
		expect(page).to have_content('Title can\'t be blank')
		expect(page).to have_content("Description can't be blank")
	end

	scenario 'Description must be longer than 10 characters' do
		fill_in 'ticket[title]', with: 'Non-standards compliance'
		fill_in 'ticket[description]', with: 'it sucks'
		click_button 'Create Ticket'
		expect(page).to have_content('Ticket has not been created.')
		expect(page).to have_content('Description is too short')
	end

end