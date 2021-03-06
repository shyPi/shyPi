class Shusher < ActiveRecord::Base
  belongs_to :user
  belongs_to :shout

  validates :name, presence: true, uniqueness: true, 
                   length: {minimum: 5, maximum: 30}
  validates :sound_threshold, presence: true, 
                              numericality: { 
                                greater_than_or_eqaul_to: -1, 
                                less_than_or_equal_to: 100 }
  validates :mac_address, presence: true, uniqueness: true


  DECAY = 0.20 # 20%/3sec decay for Shusher's loudness points calculation
  POLL_INTERVAL = 3 #frequence Shusher polls the web server
  MIN_THRESHOLD = 40
  MAX_THRESHOLD = 160

  def decay
    DECAY
  end

  def poll_interval
    POLL_INTERVAL
  end

  def min_threshold
    MIN_THRESHOLD
  end

  def max_threshold
    MAX_THRESHOLD
  end


  attr_accessor :address
  geocoded_by :ip_address
  after_validation :geocode,
                    :if => lambda{ |obj| obj.ip_address_changed? }
  reverse_geocoded_by :latitude, :longitude
  after_validation :perform_reverse_geocode  # auto-fetch address

  def perform_reverse_geocode
    reverse_geocode
    Rails.logger.info ">>>>>>>>>>> #{address}" #prints out to Rails console
  end

  attr_accessor :disable
#   def disable
# Rails.logger.info "==== ------- ======="
#   end
end
