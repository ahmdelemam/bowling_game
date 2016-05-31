require 'rails_helper'

RSpec.describe "tries/show", type: :view do
  before(:each) do
    @try = assign(:try, Try.create!(
      :frame_id => 1,
      :score => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
