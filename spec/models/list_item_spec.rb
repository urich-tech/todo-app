require 'rails_helper'

# Test suite for the TodoItem model
RSpec.describe ListItem, type: :model do
  # Relationship test
  it {should belong_to(:user)}
#  it {should belong_to(:list)}

  # validation test
  it { should validate_presence_of(:short_name) }


end