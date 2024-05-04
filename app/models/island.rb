class Island < ApplicationRecord
  has_many :reviews
  has_many :start_bookings, class_name: 'Booking', foreign_key: 'start_island_id'
  has_many :end_bookings, class_name: 'Booking', foreign_key: 'end_island_id'
end
