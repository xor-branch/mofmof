class AddNotNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :properties, :address, false
    change_column_null :properties, :age, false
    change_column_null :properties, :note, false
    change_column_null :properties, :property_name, false
    change_column_null :properties, :rent, false

    change_column_null :nearest_stations, :route_name, false
    change_column_null :nearest_stations, :station_name, false
    change_column_null :nearest_stations, :time, false
    change_column_null :nearest_stations, :property_id, false
  end
end
