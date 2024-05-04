class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :start_island, class_name: 'Island'
  belongs_to :end_island, class_name: 'Island'
end
