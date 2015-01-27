require 'rails_helper'

feature 'CreatingProjects', :type => :feature do
  #pending "add some scenarios (or delete) #{__FILE__}"
  scenario 'can create a project' do
  	
  	visit '/'

  	click_link 'New Project'
   

  	page.fill_in 'project[name]' , with: 'TextMate 2'

  	fill_in 'project[description]' , with: 'A text-editor for OS X'
  	click_button('Create')
  	expect(page).to have_content('Project has been created.')
  end
end
