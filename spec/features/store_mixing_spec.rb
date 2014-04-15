require 'spec_helper'

feature 'Store mixing:' do
	
	let!(:admin_role) {create(:admin_role)}
	let!(:user) {create(:user)}

	let!(:shipping_category) {create(:shipping_category)}
	let!(:default_store) {create(:default_store)}

	context 'as a user visiting the site, I can' do
	
		let!(:alternative_store) {create(:alternative_store)}
		let!(:sub_store) {create(:sub_store)}

		let!(:product_in_other) {
			create(:product_in_other,
				shipping_category: shipping_category,
				stores: [alternative_store])
		}
		let!(:product_in_other_and_sub) {
			create(:product,
				name: 'Other + Sub',
				slug: 'otherandsub',
				shipping_category: shipping_category,
				stores: [alternative_store, sub_store])
		}
		let!(:product_in_sub) {
			create(:product,
				name: 'Product in Sub',
				slug: 'sub-only',
				shipping_category: shipping_category,
				stores: [sub_store])
		}

	    before(:each) do
	      sign_in_as! user, 'spree123'
	    end

	    scenario 'visit a valid compound store url and see the mutually-included products', wip: true do
			visit '/stores/other/sub'
			expect(page).to display_product_called('Other + Sub')
	    end

	    scenario 'visit an invalid compound store url and be redirected to an error page?'

	end

end