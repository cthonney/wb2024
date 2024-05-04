class Island < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :reviews
  has_many :start_bookings, class_name: 'Booking', foreign_key: 'start_island_id'
  has_many :end_bookings, class_name: 'Booking', foreign_key: 'end_island_id'
end
