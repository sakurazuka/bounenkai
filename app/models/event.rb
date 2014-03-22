class Event < ActiveRecord::Base
  acts_as_paranoid

  has_many :members, dependent: :destroy
  has_many :boards, dependent: :destroy
  has_many :schedule_dates, dependent: :destroy
  has_many :schedule_places, dependent: :destroy

  accepts_nested_attributes_for :schedule_dates
  accepts_nested_attributes_for :schedule_places
end
