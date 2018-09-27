class Article < ApplicationRecord
  validates :title, presence: true,
                   length: { minimum: 5 }
  has_one_attached :song_file
  geocoded_by :region
  after_validation :geocode
end
