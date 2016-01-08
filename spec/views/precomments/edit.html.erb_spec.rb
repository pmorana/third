require 'rails_helper'

RSpec.describe "precomments/edit", type: :view do
  before(:each) do
    @precomment = assign(:precomment, Precomment.create!(
      :title => "MyString",
      :body => "MyText",
      :event => nil,
      :user => nil,
      :created_by => "MyString"
    ))
  end

  it "renders the edit precomment form" do
    render

    assert_select "form[action=?][method=?]", precomment_path(@precomment), "post" do

      assert_select "input#precomment_title[name=?]", "precomment[title]"

      assert_select "textarea#precomment_body[name=?]", "precomment[body]"

      assert_select "input#precomment_event_id[name=?]", "precomment[event_id]"

      assert_select "input#precomment_user_id[name=?]", "precomment[user_id]"

      assert_select "input#precomment_created_by[name=?]", "precomment[created_by]"
    end
  end
end
