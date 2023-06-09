class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @reviews = Review.all
  end

  def reservation
    @subscriptions = Subscription.all
    @courses = Course.all
    @user = current_user
    @subscription = Subscription.create
    # @course = Course.find(params[:id])
    @booking = Booking.new
    # @booking.user = current_user
    # @booking.course = Course.find(params[:course_id])
  end

  def dashboard
    @payements = current_user.payements
    @bookings = current_user.bookings
  end

  # private

  # def booking_params
  #   params.require(:booking).permit(:status)
  # end
end
