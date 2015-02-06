# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#


# Create factories
FactoryGirl.define  do 
	factory :project do
		name "Example project"
	end
end
