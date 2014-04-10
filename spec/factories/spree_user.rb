FactoryGirl.define do
	factory :admin_role, class: Spree::Role do
		name "admin"
	end
end

FactoryGirl.define do
	factory :user, class: Spree::User do
		password "spree123"
		email "spree@example.com"
		login "spree@example.com"
	end
end
