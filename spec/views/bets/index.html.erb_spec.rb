require 'rails_helper'

RSpec.describe "bets/index", type: :view do
  before(:each) do
    assign(:bets, [
      Bet.create!(
        description: "Description",
        owner: nil,
        better: nil,
        settled: false
      ),
      Bet.create!(
        description: "Description",
        owner: nil,
        better: nil,
        settled: false
      )
    ])
  end

  it "renders a list of bets" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Description".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
  end
end
