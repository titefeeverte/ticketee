# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default("0"), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  admin                  :boolean          default("0")
#

=begin
FactoryGirl.define do
	factory :user do
		#Important tjr donner un exemple concret
		name "Christelle Sanchez"
		email "chris@chris.com"
		password_digest "123456"
	end

end
=end



FactoryGirl.define do
 factory :user do
 	sequence(:email) { |n| "test#{n}@example.com" }
    password "password"

    factory :admin_user do
    	admin true
    end	
  end 
end

