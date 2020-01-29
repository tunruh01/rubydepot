class StoreController < ApplicationController
  include CurrentCart
  skip_before_action :authorize
  before_action :set_cart
  before_action :increment_count, only: [:index]

  def index
    if params[:set_locale]
      redirect_to store_index_url(locale: params[:set_locale])
    else
      @products = Product.order(:title)
    end
  end

  def increment_count
    if session[:counter].nil?
      session[:counter] = 0
    end
    @count = session[:counter] += 1
    end
  end
