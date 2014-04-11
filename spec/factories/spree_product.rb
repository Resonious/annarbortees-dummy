FactoryGirl.define do
	factory :coffee_mug, class: Spree::Product do
		name 'Coffee Mug'
		available_on Time.now
		slug 'coffee-mug'
		#stores ['test, other']
	end

	factory :desk_chair, class: Spree::Product do
		name 'Desk Chair'
		available_on Time.now
		slug 'desk-chair'
		#stores ['test']
	end

	factory :headphones, class: Spree::Product do
		name 'Headphones'
		available_on Time.now
		slug 'headphones'
		#stores ['other']
	end

	factory :product_in_test, class: Spree::Product do
		name 'Product in Test'
		available_on Time.now
		slug 'test-product'
		price 1.20
	end

	factory :product_in_other, class: Spree::Product do
		name 'Product in Other'
		available_on Time.now
		slug 'other-product'
		price 1.50
	end
end
