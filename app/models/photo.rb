class Photo < ApplicationRecord
  belongs_to :album

  validates :name, uniqueness: true
end
