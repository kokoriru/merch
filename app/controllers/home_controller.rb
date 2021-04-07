class HomeController < ApplicationController
  def index
    @products = Product.all.order(started_at: :asc).limit(10)
  end
end
