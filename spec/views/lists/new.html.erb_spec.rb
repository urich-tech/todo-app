require 'rails_helper'

RSpec.describe "lists/new", type: :view do
  before(:each) do
    assign(:list, List.new(
      name_of_list: "MyString",
      public_view: false
    ))
  end

  it "renders new list form" do
    render

    assert_select "form[action=?][method=?]", lists_path, "post" do

      assert_select "input[name=?]", "list[name_of_list]"

      assert_select "input[name=?]", "list[public_view]"
    end
  end
end
