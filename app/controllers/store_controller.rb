class StoreController < ApplicationController
  before_action :increment_count, only: [:index]

  def index
    @products = Product.order(:title)
  end

  def increment_count
    if session[:counter].nil?
      session[:counter] = 0
    end
    @count = session[:counter] += 1
    end
  end
