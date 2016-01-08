require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :event_title => "MyString",
      :event_info => "MyText"
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input#event_event_title[name=?]", "event[event_title]"

      assert_select "textarea#event_event_info[name=?]", "event[event_info]"
    end
  end
end
