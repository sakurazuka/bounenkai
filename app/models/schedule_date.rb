class ScheduleDate < ActiveRecord::Base
  acts_as_paranoid

  validates :date,
            presence: true
end
