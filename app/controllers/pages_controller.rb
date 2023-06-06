class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @reviews = Review.all
  end

  def dashboard
  end

  def reservations
    @subscriptions =  subscriptions.all
    @courses = Course.first(4)
  end

end
