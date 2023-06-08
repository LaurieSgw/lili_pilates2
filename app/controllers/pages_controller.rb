class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @reviews = Review.all
  end

  def reservation
    @subscriptions = Subscription.all
    @courses = Course.all
  end

  def dashboard
    @oayements = current_user.payements
    @bookings = current_user.bookings
  end

end
