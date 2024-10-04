require 'rails_helper'

RSpec.describe "profiles/show", type: :view do
  before(:each) do
    assign(:profile, Profile.create!(
      user: nil,
      name: "Name",
      venmo: "Venmo",
      paypal: "Paypal",
      cashapp: "Cashapp",
      favorite_team: "Favorite Team"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Venmo/)
    expect(rendered).to match(/Paypal/)
    expect(rendered).to match(/Cashapp/)
    expect(rendered).to match(/Favorite Team/)
  end
end
