require 'spec_helper'

feature 'Store mixing:' do
  
  let!(:admin_role) {create(:admin_role)}
  let!(:user) {create(:user)}

  let!(:shipping_category) {create(:shipping_category)}
  let!(:default_store) {create(:default_store)}

  let!(:product_in_test)  {
    create(:product_in_test,  
      shipping_category: shipping_category,
      stores: [default_store])
  }

  context 'as a user visiting the site', user: true do
  
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

      scenario 'I can visit a valid compound store url and see only the mutually-included products', wip: false do
        visit '/stores/other/sub'
        expect(page).to display_product_called 'Other + Sub'
        expect(page).to_not display_product_called 'Product in Sub'
        expect(page).to_not display_product_called 'Product in Other'
        expect(page).to_not display_product_called 'Product in Test'
      end

      scenario 'I can visit an invalid compound store url and be redirected to an error page?', wip: true do
        visit '/stores/sub/other'
        # Change this to actually look for error page content
        expect(page).to_not display_product_called 'Product in Sub'
        expect(page).to_not display_product_called 'Product in Other'
      end

      context 'when alternative_store is under the domain www.example.com,' do
        before(:each) { alternative_store.domains = 'www.example.com'; alternative_store.save }

        scenario 'I am redirected to /stores/sub when visiting /stores/other/sub', wip: true do
          visit '/stores/other/sub'
          expect(current_path).to eq '/stores/sub'
          expect(page).to_not display_product_called 'Product in Sub'
          expect(page).to_not display_product_called 'Product in Other'
          expect(page).to_not display_product_called 'Product in Test'
        end

      end

  end

end