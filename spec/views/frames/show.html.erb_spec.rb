require 'rails_helper'

RSpec.describe "frames/show", type: :view do
  before(:each) do
    @frame = assign(:frame, Frame.create!(
      :game_id => 1,
      :status => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
