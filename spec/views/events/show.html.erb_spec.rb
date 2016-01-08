require 'rails_helper'

RSpec.describe "events/show", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :event_title => "Event Title",
      :event_info => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Event Title/)
    expect(rendered).to match(/MyText/)
  end
end
