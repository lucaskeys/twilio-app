class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true
  has_many :contacts
  has_many :messages, through: :contacts
  validates :phone_number, presence: true
  end
