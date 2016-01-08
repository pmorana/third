require 'rails_helper'

RSpec.describe "precomments/show", type: :view do
  before(:each) do
    @precomment = assign(:precomment, Precomment.create!(
      :title => "Title",
      :body => "MyText",
      :event => nil,
      :user => nil,
      :created_by => "Created By"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Created By/)
  end
end
