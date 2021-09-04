class Album < ApplicationRecord
  has_many :photos, dependent: :destroy

  validates :name, uniqueness: true
end
