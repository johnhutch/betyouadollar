require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  let(:profile) {
    Profile.create!(
      user: nil,
      name: "MyString",
      venmo: "MyString",
      paypal: "MyString",
      cashapp: "MyString",
      favorite_team: "MyString"
    )
  }

  before(:each) do
    assign(:profile, profile)
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(profile), "post" do

      assert_select "input[name=?]", "profile[user_id]"

      assert_select "input[name=?]", "profile[name]"

      assert_select "input[name=?]", "profile[venmo]"

      assert_select "input[name=?]", "profile[paypal]"

      assert_select "input[name=?]", "profile[cashapp]"

      assert_select "input[name=?]", "profile[favorite_team]"
    end
  end
end
