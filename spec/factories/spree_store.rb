FactoryGirl.define do
	factory :shipping_category, class: Spree::ShippingCategory do
		name 'Default'
	end


	factory :default_store, class: Spree::Store do 
		name 'Test Store'
		code 'test'
		domains 'test.aatc.com'
		default 1
		email '...'
		default_currency 'USD'
		#initialize_with { Spree::Store.find_or_create_by(code: code)} 
	end

	factory :alternative_store, class: Spree::Store do
		name 'Other Store'
		code 'other'
		domains 'dont.care.com'
		default 0
		email '...'
		default_currency 'USD'
	end
end
