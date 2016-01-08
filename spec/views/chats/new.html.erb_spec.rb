require 'rails_helper'

RSpec.describe "chats/new", type: :view do
  before(:each) do
    assign(:chat, Chat.new(
      :event => nil,
      :user => nil,
      :body => "MyText",
      :created_by => "MyString"
    ))
  end

  it "renders new chat form" do
    render

    assert_select "form[action=?][method=?]", chats_path, "post" do

      assert_select "input#chat_event_id[name=?]", "chat[event_id]"

      assert_select "input#chat_user_id[name=?]", "chat[user_id]"

      assert_select "textarea#chat_body[name=?]", "chat[body]"

      assert_select "input#chat_created_by[name=?]", "chat[created_by]"
    end
  end
end
