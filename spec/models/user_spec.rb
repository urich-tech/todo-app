require 'rails_helper'

# Test suite for the Account model
RSpec.describe User, type: :model do
  # Relationship test
  it { should have_many(:list_items)}

  #it { should have_many(:lists)}

end