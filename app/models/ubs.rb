class Ubs < ApplicationRecord
  validates_presence_of :name

  def as_json(options={})
    super(only: [:id, :name, :address, :city, :phone])
  end

end
