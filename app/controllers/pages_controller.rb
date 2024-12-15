class PagesController < ApplicationController
  def home
    @locations = [
      { name: "Absolute Health & Physio", address: "Parkshot House, 5 Kew Road, Richmond, TW9 2PR" },
      { name: "White Hart Clinic", address: "10 White Hart Lane, Barnes, London, SW13 0PY" },
      { name: "Lambert Sports Clinic", address: "380 Ewell Road, Surbiton, KT6 7BE" }
    ]

    @center = Geocoder.search("Richmond, London").first.coordinates
    
      @contact = Contact.new
    end
end
