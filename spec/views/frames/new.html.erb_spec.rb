require 'rails_helper'

RSpec.describe "frames/new", type: :view do
  before(:each) do
    assign(:frame, Frame.new(
      :game_id => 1,
      :status => 1
    ))
  end

  it "renders new frame form" do
    render

    assert_select "form[action=?][method=?]", frames_path, "post" do

      assert_select "input#frame_game_id[name=?]", "frame[game_id]"

      assert_select "input#frame_status[name=?]", "frame[status]"
    end
  end
end
