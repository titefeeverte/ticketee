require 'rails_helper'
require "rspec/expectations"


feature 'CreatingProjects', :type => :feature do
  before do
    sign_in_as!(FactoryGirl.create(:admin_user))
  end

  #pending "add some scenarios (or delete) #{__FILE__}"
  scenario 'can create a project' do

  	visit '/'

  	click_link 'New Project'

  	fill_in 'project[name]' , with: 'TextMate 2'
  	fill_in 'project[description]' , with: 'A text-editor for OS X'
  	click_button('Create')
  	expect(page).to have_content('Project has been created.')

  end
end