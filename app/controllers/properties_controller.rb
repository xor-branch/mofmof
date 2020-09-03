class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]
  before_action :set_nearest_stations, only: [:show, :edit, :update]

  def new
    @property = Property.new
    2.times { @property.nearest_stations.build }
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to properties_path
    else
      2.times { @property.nearest_stations.build }
      render :new
    end
  end

  def index
    @properties = Property.all
  end

  def show

  end

  def edit
    @property.nearest_stations.build
  end

  def update
    if @property.update(property_params)
      redirect_to properties_path
    else
      @property.nearest_stations.build
      render :edit
    end
  end

  def destroy
    @property.destroy
    redirect_to properties_path
  end

  private
    def set_property
      @property = Property.find(params[:id])
    end

    def set_nearest_stations
      @nearest_stations = @property.nearest_stations
    end

    def property_params
      params.require(:property).permit(
        :property_name,
        :rent,
        :address,
        :age,
        :note,
        nearest_stations_attributes: {}
        #: [:route_name, :station_name, :time]
      )
    end
end
