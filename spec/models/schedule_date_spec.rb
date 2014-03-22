require 'spec_helper'

describe ScheduleDate do
  it{ should validate_presence_of(:date) }
end
