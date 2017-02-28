class Contact < ActiveRecord::Base
  belongs_to :user
  has_many :messages
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
  end
