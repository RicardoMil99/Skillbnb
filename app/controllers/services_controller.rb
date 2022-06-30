class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    if params[:query].present?
      @services = Service.search_for_skills(params[:query])
    else
      @services = Service.all
    end
  end

  def new
    @service = Service.new
  end

  def show
    @service = Service.find(params[:id])
    @previous_booking = Booking.where(user: current_user, service: @service)
    @booking = Booking.new
    @teacher = User.find(@service.user_id)
  end

  def create
    @service = Service.new(service_params)
    @service.user = current_user
    if @service.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def search
    if params [:search].blank?
      redirect_to services_path
    else
      @input_searchbar = params [:search].downcase
      @results = Services.all.where("LIKE :search, search:", "%{@input_searchbar}%")
    end
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    redirect_to dashboard_path
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    @service.update(service_params)

    # no need for app/views/restaurants/update.html.erb
    redirect_to dashboard_path(@restaurant)
  end

  private

  def service_params
    params.require(:service).permit(:skill_name, :price_per_hour, :availability, :photo)
  end
end
