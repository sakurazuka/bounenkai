class SchedulePlace < ActiveRecord::Base
  acts_as_paranoid

  validates :name,
            :address,
            :price,
            presence: true
end
