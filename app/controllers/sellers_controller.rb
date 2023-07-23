
class SellersController < ApplicationController

  def index
    sellers = Seller.all
    render(
      json: {
        sellers: sellers
      }
    )
  end

  def create_kek
    seller = Seller.create!(name: "seller-no-#{Seller.last.id}", email: "seller-no-#{Seller.last.id}@gmail.com")
    render(
      json: {
        created: seller
      }
    )
  end

end
