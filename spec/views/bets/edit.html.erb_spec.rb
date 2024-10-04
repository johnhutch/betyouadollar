require 'rails_helper'

RSpec.describe "bets/edit", type: :view do
  let(:bet) {
    Bet.create!(
      description: "MyString",
      owner: nil,
      better: nil,
      settled: false
    )
  }

  before(:each) do
    assign(:bet, bet)
  end

  it "renders the edit bet form" do
    render

    assert_select "form[action=?][method=?]", bet_path(bet), "post" do

      assert_select "input[name=?]", "bet[description]"

      assert_select "input[name=?]", "bet[owner_id]"

      assert_select "input[name=?]", "bet[better_id]"

      assert_select "input[name=?]", "bet[settled]"
    end
  end
end
