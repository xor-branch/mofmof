class ChangeColumnsAddNotNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :properties, :address, null: false
    change_column_null :properties, :age, null: false
    change_column_null :properties, :note, null: false
    change_column_null :properties, :property_name, null: false
    change_column_null :properties, :rent, null: false

    change_column_null :nearest_stations, :route_name, null: false
    change_column_null :nearest_stations, :station_name, null: false
    change_column_null :nearest_stations, :time, null: false
    change_column_null :nearest_stations, :property_id, null: false
  end
end
