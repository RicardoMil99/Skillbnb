class DashboardsController < ApplicationController
  def index
    if current_user.role == "teacher"
      @bookings = current_user.bookings_as_teacher
      @services = Service.where(user: current_user)
    end
    @student_booking = Booking.where(user: current_user)

  end
end
