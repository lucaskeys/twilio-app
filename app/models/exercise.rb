class Exercise < ActiveRecord::Base
  validates :type, presence: :true
  validates :calories_burned, presence: :true
end
