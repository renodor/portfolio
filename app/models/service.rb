class Service < ApplicationRecord
  has_and_belongs_to_many :projects

  validates :name, :icon, presence: true

  def icon_tag
    "<i class=\"#{icon}\"></i>".html_safe
  end
end
