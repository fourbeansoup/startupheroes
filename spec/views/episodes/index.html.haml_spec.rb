require 'spec_helper'

describe "episodes/index.html.haml" do
  before(:each) do
    assign(:episodes, [
      stub_model(Episode,
        :title => "Title",
        :guest => "Guest",
        :company => "Company",
        :show_notes => "MyText",
        :intro => "MyText",
        :number => 1
      ),
      stub_model(Episode,
        :title => "Title",
        :guest => "Guest",
        :company => "Company",
        :show_notes => "MyText",
        :intro => "MyText",
        :number => 1
      )
    ])
  end

  it "renders a list of episodes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Guest".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
