class BookingsController < ApplicationController
  before_action :authenticate_user!

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    raise
    @booking.course = Course.find(params[:course_id])
    if @booking.course.available_places.positive?
     @booking.save && @booking.course.available_places -= 1
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.user = current_user
    @booking.course = Course.find(params[:course_id])
    if @booking.course.date < Date.today
      @booking.destroy
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity, notice: "Désolée ! Il n'est pas possible d'annuler votre réservation moins de 24h avant le cours."
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:status)
  end
end
