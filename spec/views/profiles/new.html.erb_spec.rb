require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      user: nil,
      name: "MyString",
      venmo: "MyString",
      paypal: "MyString",
      cashapp: "MyString",
      favorite_team: "MyString"
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input[name=?]", "profile[user_id]"

      assert_select "input[name=?]", "profile[name]"

      assert_select "input[name=?]", "profile[venmo]"

      assert_select "input[name=?]", "profile[paypal]"

      assert_select "input[name=?]", "profile[cashapp]"

      assert_select "input[name=?]", "profile[favorite_team]"
    end
  end
end
