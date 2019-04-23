require 'rails_helper'

RSpec.feature "AddToCarts", type: :feature, js: true do

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

  def add_to_cart
    first('article.product').find_button( 'Add' ).click
  end

  scenario "They can add a product to the cart" do
    visit root_path
    add_to_cart
    expect(page).to have_content ('My Cart (1)')
    
    save_screenshot "screenshot.png"
  end

end
