class Page < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  private

  def geocode
    results = Geocoder.search(address)
    if results.present?
      self.latitude = results.first.latitude
      self.longitude = results.first.longitude
    end
  end
end
