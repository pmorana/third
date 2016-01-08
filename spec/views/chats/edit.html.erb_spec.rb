require 'rails_helper'

RSpec.describe "chats/edit", type: :view do
  before(:each) do
    @chat = assign(:chat, Chat.create!(
      :event => nil,
      :user => nil,
      :body => "MyText",
      :created_by => "MyString"
    ))
  end

  it "renders the edit chat form" do
    render

    assert_select "form[action=?][method=?]", chat_path(@chat), "post" do

      assert_select "input#chat_event_id[name=?]", "chat[event_id]"

      assert_select "input#chat_user_id[name=?]", "chat[user_id]"

      assert_select "textarea#chat_body[name=?]", "chat[body]"

      assert_select "input#chat_created_by[name=?]", "chat[created_by]"
    end
  end
end
