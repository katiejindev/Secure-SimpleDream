class HomeController < ApplicationController
  def index
    @products = Product.all
    @featured_products = Product.featured
  end

  def about
  end

  def contact
  end

  def send_contact
    email = params[:email]
    msg = params[:msg]

    ContactMailer.contact_us(email, msg).deliver
    redirect_to root_path
  end
end
