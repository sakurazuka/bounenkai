class Board < ActiveRecord::Base
  acts_as_paranoid

  validates :name,
            :tweet,
            presence: true
end
