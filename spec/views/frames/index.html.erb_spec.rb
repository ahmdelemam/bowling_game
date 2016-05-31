require 'rails_helper'

RSpec.describe "frames/index", type: :view do
  before(:each) do
    assign(:frames, [
      Frame.create!(
        :game_id => 1,
        :status => 2
      ),
      Frame.create!(
        :game_id => 1,
        :status => 2
      )
    ])
  end

  it "renders a list of frames" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
