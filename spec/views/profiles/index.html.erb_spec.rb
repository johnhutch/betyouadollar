require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        user: nil,
        name: "Name",
        venmo: "Venmo",
        paypal: "Paypal",
        cashapp: "Cashapp",
        favorite_team: "Favorite Team"
      ),
      Profile.create!(
        user: nil,
        name: "Name",
        venmo: "Venmo",
        paypal: "Paypal",
        cashapp: "Cashapp",
        favorite_team: "Favorite Team"
      )
    ])
  end

  it "renders a list of profiles" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Venmo".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Paypal".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Cashapp".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Favorite Team".to_s), count: 2
  end
end
