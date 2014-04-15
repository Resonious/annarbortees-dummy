FactoryGirl.define do
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

	factory :product, class: Spree::Product do
		available_on Time.now
		price 99.99
	end

	factory :product_in_domain, class: Spree::Product do
		name 'Product in Domained'
		available_on Time.now
		slug 'domained-product'
		price 1.50
	end
end
