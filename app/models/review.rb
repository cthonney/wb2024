class Review < ApplicationRecord
  belongs_to :island
  belongs_to :booking
end
