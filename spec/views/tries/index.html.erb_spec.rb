require 'rails_helper'

RSpec.describe "tries/index", type: :view do
  before(:each) do
    assign(:tries, [
      Try.create!(
        :frame_id => 1,
        :score => 2
      ),
      Try.create!(
        :frame_id => 1,
        :score => 2
      )
    ])
  end

  it "renders a list of tries" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
