require 'rails_helper'

RSpec.describe "frames/edit", type: :view do
  before(:each) do
    @frame = assign(:frame, Frame.create!(
      :game_id => 1,
      :status => 1
    ))
  end

  it "renders the edit frame form" do
    render

    assert_select "form[action=?][method=?]", frame_path(@frame), "post" do

      assert_select "input#frame_game_id[name=?]", "frame[game_id]"

      assert_select "input#frame_status[name=?]", "frame[status]"
    end
  end
end
