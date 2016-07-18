require 'rails_helper'

describe SchedulePlace do
  it{ is_expected.to validate_presence_of(:name) }
  it{ is_expected.to validate_presence_of(:address) }
end
