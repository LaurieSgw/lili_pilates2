class BookingsController < ApplicationController
  before_action :authenticate_user!

  def new
    @booking = Booking.new
  end

  def create
  end
end
