require 'rails_helper'

RSpec.describe "tries/new", type: :view do
  before(:each) do
    assign(:try, Try.new(
      :frame_id => 1,
      :score => 1
    ))
  end

  it "renders new try form" do
    render

    assert_select "form[action=?][method=?]", tries_path, "post" do

      assert_select "input#try_frame_id[name=?]", "try[frame_id]"

      assert_select "input#try_score[name=?]", "try[score]"
    end
  end
end
