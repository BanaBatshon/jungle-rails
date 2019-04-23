require 'rails_helper'

RSpec.feature "Product_details", type: :feature, js: true do

  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  def click_on_product
    first('article.product').find_link( 'Details' ).click
  end

  scenario "They can see product details" do
    visit root_path
    click_on_product
    expect(page).to have_css ('article.product-detail')
    
    save_screenshot "screenshot.png"
  end

end
