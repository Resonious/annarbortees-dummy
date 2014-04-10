FactoryGirl.define do
	factory :coffee_mug, class: Spree::Product do
		name 'Coffee Mug'
		available_on Time.now
		slug 'coffee-mug'
		stores ['test, other']
	end
end

FactoryGirl.define do
	factory :desk_chair, class: Spree::Product do
		name 'Desk Chair'
		available_on Time.now
		slug 'desk-chair'
		stores ['test']
	end
end

FactoryGirl.define do
	factory :headphones, class: Spree::Product do
		name 'Headphones'
		available_on Time.now
		slug 'headphones'
		stores ['other']
	end
end
