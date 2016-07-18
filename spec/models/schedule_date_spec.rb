require 'rails_helper'

describe ScheduleDate do
  it{ is_expected.to validate_presence_of(:date) }
end
