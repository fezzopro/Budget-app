class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :trackable,
         :recoverable, :rememberable, :validatable, :confirmable
  after_create :save_to_database

  has_many :entities
  has_many :groups

  validates :name, presence: true, uniqueness: true
  validates_length_of :name, within: 3..20

  def save_to_database
    save
  end
end
