require 'rails_helper'

RSpec.describe "tries/edit", type: :view do
  before(:each) do
    @try = assign(:try, Try.create!(
      :frame_id => 1,
      :score => 1
    ))
  end

  it "renders the edit try form" do
    render

    assert_select "form[action=?][method=?]", try_path(@try), "post" do

      assert_select "input#try_frame_id[name=?]", "try[frame_id]"

      assert_select "input#try_score[name=?]", "try[score]"
    end
  end
end
