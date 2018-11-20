class Boat < ApplicationRecord
  validates :boat_name, uniqueness: true
  has_and_belongs_to_many :jobs
  belongs_to :user
end
