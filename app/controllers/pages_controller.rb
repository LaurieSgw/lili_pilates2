class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @reviews = Review.all
  end

  def dashboard
  end

  def reservation
    @subscriptions = Subscription.all
    @courses = Course.all
  end

end
