class Job < ApplicationRecord
  validates :job_description, uniqueness: true
  validates :job_description, length: {minimum: 20}
  validates :job_cost, numericality: { greater_than_or_equal_to: 100,  only_integer: true }
  has_and_belongs_to_many :boats
end
