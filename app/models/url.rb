class Url < ApplicationRecord
  validates :long_url, presence: true
  validates_uniqueness_of :shortened_url
end
