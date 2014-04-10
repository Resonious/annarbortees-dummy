FactoryGirl.define do
	factory :default_store, class: Spree::Store do 
		name 'Test Store'
		code 'test'
		domains 'test.aatc.com'
		default 1
		email '...'
		default_currency 'USD'
	end
end

FactoryGirl.define do
	factory :alternative_store, class: Spree::Store do
		name 'Other Store'
		code 'other'
		domains 'dont.care.com'
		default 0
		email '...'
		default_currency 'USD'
	end
end