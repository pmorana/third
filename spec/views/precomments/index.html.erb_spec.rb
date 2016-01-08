require 'rails_helper'

RSpec.describe "precomments/index", type: :view do
  before(:each) do
    assign(:precomments, [
      Precomment.create!(
        :title => "Title",
        :body => "MyText",
        :event => nil,
        :user => nil,
        :created_by => "Created By"
      ),
      Precomment.create!(
        :title => "Title",
        :body => "MyText",
        :event => nil,
        :user => nil,
        :created_by => "Created By"
      )
    ])
  end

  it "renders a list of precomments" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Created By".to_s, :count => 2
  end
end
