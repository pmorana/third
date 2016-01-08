require 'rails_helper'

RSpec.describe "postcomments/edit", type: :view do
  before(:each) do
    @postcomment = assign(:postcomment, Postcomment.create!(
      :title => "MyString",
      :body => "MyText",
      :event => nil,
      :user => nil,
      :created_by => "MyString"
    ))
  end

  it "renders the edit postcomment form" do
    render

    assert_select "form[action=?][method=?]", postcomment_path(@postcomment), "post" do

      assert_select "input#postcomment_title[name=?]", "postcomment[title]"

      assert_select "textarea#postcomment_body[name=?]", "postcomment[body]"

      assert_select "input#postcomment_event_id[name=?]", "postcomment[event_id]"

      assert_select "input#postcomment_user_id[name=?]", "postcomment[user_id]"

      assert_select "input#postcomment_created_by[name=?]", "postcomment[created_by]"
    end
  end
end
