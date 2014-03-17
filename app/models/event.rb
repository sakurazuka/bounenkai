class Event < ActiveRecord::Base
  has_many :members, dependent: :destroy
  has_many :boards, dependent: :destroy
  # steps :planner, :detail, :date, :place, :mail

  validates :planner,
            :password,
            presence: true,
            on: :planner

  validates :name,
            :detail,
            presence: true,
            on: :detail

end
