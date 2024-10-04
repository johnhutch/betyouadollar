require 'rails_helper'

RSpec.describe "bets/show", type: :view do
  before(:each) do
    assign(:bet, Bet.create!(
      description: "Description",
      owner: nil,
      better: nil,
      settled: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
  end
end
