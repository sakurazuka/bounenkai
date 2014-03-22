require 'spec_helper'

describe Board do
  it{ should validate_presence_of(:name) }
  it{ should validate_presence_of(:tweet) }
end
