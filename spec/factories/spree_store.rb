FactoryGirl.define do
	factory :default_store, class: Spree::Store do 
		name 'Test Store'
		code 'test'
		domains 'test.aatc.com'
		default 1
		email '...'
		default_currency 'USD'
	end

	factory :alternative_store, class: Spree::Store do
		name 'Other Store'
		code 'other'
		domains 'dont.care.com'
		default 0
		email '...'
		default_currency 'USD'
	end

	factory :sub_store, class: Spree::Store do
		name 'Sub Store'
		code 'sub'
		domains 'whatever.com'
		default 0
		email '...'
		default_currency 'USD'
	end

	# TODO the test that uses this doesn't work
	factory :domained_store, class: Spree::Store do
		name 'Domained Store'
		code 'dom'
		domains 'example.com'
		default 0
		email '...'
		default_currency 'USD'
	end
end
