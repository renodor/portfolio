class Service < ApplicationRecord
  has_and_belongs_to_many :projects

  validates :name, :icon, presence: true
end
