require 'rails_helper'

RSpec.describe "lists/show", type: :view do
  before(:each) do
    assign(:list, List.create!(
      name_of_list: "Name Of List",
      public_view: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name Of List/)
    expect(rendered).to match(/false/)
  end
end
