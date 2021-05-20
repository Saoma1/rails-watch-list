class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates_associated :list
  validates_associated :movie
  validates :list, uniqueness: { scope: :movie }
  validates :comment, length: { minimum: 6 }
end
