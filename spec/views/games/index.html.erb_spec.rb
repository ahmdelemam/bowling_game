require 'rails_helper'

RSpec.describe "games/index", type: :view do
  before(:each) do
    assign(:games, [
      Game.create!(
        :gamer_name => "Gamer Name"
      ),
      Game.create!(
        :gamer_name => "Gamer Name"
      )
    ])
  end

  it "renders a list of games" do
    render
    assert_select "tr>td", :text => "Gamer Name".to_s, :count => 2
  end
end
