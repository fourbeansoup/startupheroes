require 'spec_helper'

describe "episodes/edit.html.haml" do
  before(:each) do
    @episode = assign(:episode, stub_model(Episode,
      :title => "MyString",
      :guest => "MyString",
      :company => "MyString",
      :show_notes => "MyText",
      :intro => "MyText",
      :number => 1
    ))
  end

  it "renders the edit episode form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => episodes_path(@episode), :method => "post" do
      assert_select "input#episode_title", :name => "episode[title]"
      assert_select "input#episode_guest", :name => "episode[guest]"
      assert_select "input#episode_company", :name => "episode[company]"
      assert_select "textarea#episode_show_notes", :name => "episode[show_notes]"
      assert_select "textarea#episode_intro", :name => "episode[intro]"
      assert_select "input#episode_number", :name => "episode[number]"
    end
  end
end
