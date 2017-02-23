class Diet < ActiveRecord::Base
  validates :food, presence: :true
  validates :calories, presence: :true
end
