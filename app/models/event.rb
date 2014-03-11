class Event < ActiveRecord::Base
  has_many :members, dependent: :destroy
  has_many :boards, dependent: :destroy
end
