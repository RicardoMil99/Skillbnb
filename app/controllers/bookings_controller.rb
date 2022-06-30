class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.service = Service.find(params[:service_id])
    @booking.status = "pending"
    @booking.save
    redirect_to service_path(@booking.service), alert: 'Congratulations! You booked a Skill'
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to dashboard_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to booking_path
  end

  def new
    @booking = Booking.new()
  end

  def index
    @bookings = Booking.all
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :service_id, :start_date, :end_date)
  end
end
