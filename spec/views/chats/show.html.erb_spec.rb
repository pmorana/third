require 'rails_helper'

RSpec.describe "chats/show", type: :view do
  before(:each) do
    @chat = assign(:chat, Chat.create!(
      :event => nil,
      :user => nil,
      :body => "MyText",
      :created_by => "Created By"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Created By/)
  end
end
