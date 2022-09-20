class Project < ApplicationRecord
  has_and_belongs_to_many :services
  has_many_attached :photos
  has_one_attached :cover_photo

  validates :name, presence: true
end
