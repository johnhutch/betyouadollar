require 'rails_helper'

RSpec.describe "bets/new", type: :view do
  before(:each) do
    assign(:bet, Bet.new(
      description: "MyString",
      owner: nil,
      better: nil,
      settled: false
    ))
  end

  it "renders new bet form" do
    render

    assert_select "form[action=?][method=?]", bets_path, "post" do

      assert_select "input[name=?]", "bet[description]"

      assert_select "input[name=?]", "bet[owner_id]"

      assert_select "input[name=?]", "bet[better_id]"

      assert_select "input[name=?]", "bet[settled]"
    end
  end
end
