require 'rails_helper'

RSpec.describe "chats/index", type: :view do
  before(:each) do
    assign(:chats, [
      Chat.create!(
        :event => nil,
        :user => nil,
        :body => "MyText",
        :created_by => "Created By"
      ),
      Chat.create!(
        :event => nil,
        :user => nil,
        :body => "MyText",
        :created_by => "Created By"
      )
    ])
  end

  it "renders a list of chats" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Created By".to_s, :count => 2
  end
end
