class Event < ActiveRecord::Base
  acts_as_paranoid

  has_many :members, dependent: :destroy
  has_many :boards, dependent: :destroy
  has_many :schedule_dates, dependent: :destroy
  has_many :schedule_places, dependent: :destroy

  accepts_nested_attributes_for :schedule_dates
  accepts_nested_attributes_for :schedule_places

  # steps :planner, :detail, :date, :place, :mail
  validates :planner,
            :password,
            presence: true,
            if: :active_or_planner?

  validates :name,
            :detail,
            :close_date,
            presence: true,
            if: :active_or_detail?

  def active?
    status == 'active'
  end

  def active_or_planner?
    # status.include?('planner') || active?
    status == 'planner' || status == 'active'
  end

  def active_or_detail?
    # status.include?('detail') || active?
    status == 'detail' || status == 'active'
  end
end
