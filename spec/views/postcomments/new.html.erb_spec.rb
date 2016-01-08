require 'rails_helper'

RSpec.describe "postcomments/new", type: :view do
  before(:each) do
    assign(:postcomment, Postcomment.new(
      :title => "MyString",
      :body => "MyText",
      :event => nil,
      :user => nil,
      :created_by => "MyString"
    ))
  end

  it "renders new postcomment form" do
    render

    assert_select "form[action=?][method=?]", postcomments_path, "post" do

      assert_select "input#postcomment_title[name=?]", "postcomment[title]"

      assert_select "textarea#postcomment_body[name=?]", "postcomment[body]"

      assert_select "input#postcomment_event_id[name=?]", "postcomment[event_id]"

      assert_select "input#postcomment_user_id[name=?]", "postcomment[user_id]"

      assert_select "input#postcomment_created_by[name=?]", "postcomment[created_by]"
    end
  end
end
