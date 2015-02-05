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

