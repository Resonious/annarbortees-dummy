require 'spec_helper'

feature 'Store mixing:' do
	
	let!(:admin_role) {create(:admin_role)}
	let!(:user) {create(:user)}

	let!(:shipping_category) {create(:shipping_category)}
	let!(:default_store) {create(:default_store)}

	context 'as a user visiting the site, I can' do
	
		let!(:alternative_store) {create(:alternative_store)}

	    let!(:product_in_test)  {
	      create(:product_in_test,  
	        shipping_category: create(:shipping_category),
	        stores: [default_store])
	    }
	    let!(:product_in_other) {
	      create(:product_in_other, 
	        shipping_category: create(:shipping_category),
	        stores: [alternative_store])
	    }

	    before(:each) do
	      sign_in_as! user, 'spree123'
	    end

	    scenario 'visit a valid compound store url and see the mutually-included products', wip: true do
			
	    end

	    scenario 'visit an invalid compound store url and be redirected to an error page?'

	end

end