class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    services = Service.all
    sorted = services.sort {|s| s.bookings.size}
    @services = sorted.first(3)
  end
end
