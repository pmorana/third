require 'rails_helper'

RSpec.describe "alerts/edit", type: :view do
  before(:each) do
    @alert = assign(:alert, Alert.create!(
      :user => nil,
      :event => nil,
      :alert_name => "MyString"
    ))
  end

  it "renders the edit alert form" do
    render

    assert_select "form[action=?][method=?]", alert_path(@alert), "post" do

      assert_select "input#alert_user_id[name=?]", "alert[user_id]"

      assert_select "input#alert_event_id[name=?]", "alert[event_id]"

      assert_select "input#alert_alert_name[name=?]", "alert[alert_name]"
    end
  end
end
