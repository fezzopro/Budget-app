class User < ApplicationRecord
  has_many :entities
  has_many :groups

  validates :name, presence: true, uniqueness: true
  validates_length_of :name, within: 3..20
end
