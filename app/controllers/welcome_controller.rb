class WelcomeController < ApplicationController
  def index
    @title = "Miyazaki Seminar"
    @products = Product.all
  end
end
