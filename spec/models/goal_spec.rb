require 'spec_helper'

describe Goal do
  it{should belong_to :contact}
  it{should validate_presence_of(:title)}
  it{should validate_presence_of(:due_date)}
end
