class Ubs < ApplicationRecord
  validates_presence_of :name

  def as_json(options={})
    obj = super(only: [:id, :name, :address, :city, :phone])
    obj[:geocode] = { lat: geocode_lat.to_f, long: geocode_long.to_f }
    return obj
  end

end
