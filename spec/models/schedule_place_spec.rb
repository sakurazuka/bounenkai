require 'spec_helper'

describe SchedulePlace do
  it{ should validate_presence_of(:name) }
  it{ should validate_presence_of(:address) }
end
