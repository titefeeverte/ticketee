require 'rails_helper'

feature "CreatingProjects", :type => :feature do
  #pending "add some scenarios (or delete) #{__FILE__}"
  scenario "can create a project" do
  	
  	visit '/'

    click_link 'New Project'

  	fill_in 'name' , with: 'TextMate 2'
  	fill_in 'description' , with: 'A text-editor for OS X'
  	click_button 'Create Project'
  	expect(page).to have_content('Project has been created.')
  end
end
