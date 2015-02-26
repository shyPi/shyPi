class Shusher < ActiveRecord::Base

  validates :name, presence: true, 
                   uniqueness: true, 
                   length: {minimum: 5, maximum: 30}
  attr_accessor :address
  geocoded_by :ip_address
  after_validation :geocode,
                    :if => lambda{ |obj| obj.ip_address_changed? }
  reverse_geocoded_by :latitude, :longitude
  after_validation :perform_reverse_geocode  # auto-fetch address

  #???WXU
  def perform_reverse_geocode
    reverse_geocode
    # Rails.logger.info ">>>>>>>>>>> #{address}"
  end

end