require 'rails_helper'

describe Board do
  it{ is_expected.to validate_presence_of(:name) }
  it{ is_expected.to validate_presence_of(:tweet) }
end
