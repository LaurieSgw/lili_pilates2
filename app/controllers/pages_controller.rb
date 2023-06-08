class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @reviews = Review.all
  end

  def reservation
    @subscription = Subscription.create
    @course = Course.create
    @user = current_user
    @subscriptions = Subscription.all
    @courses = Course.all
  end

  def dashboard
    @payements = current_user.payements
    @bookings = current_user.bookings
  end
end
