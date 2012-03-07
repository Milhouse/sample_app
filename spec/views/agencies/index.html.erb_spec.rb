require 'spec_helper'

describe "agencies/index" do
  before(:each) do
    assign(:agencies, [
      stub_model(Agency,
        :federal_id_number => 1,
        :name => "Name",
        :year_admitted => "",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => "",
        :phone => "",
        :fax => "",
        :website_address => "Website Address",
        :contact_name => "Contact Name",
        :email_address => "Email Address",
        :agency_mission => "MyText"
      ),
      stub_model(Agency,
        :federal_id_number => 1,
        :name => "Name",
        :year_admitted => "",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => "",
        :phone => "",
        :fax => "",
        :website_address => "Website Address",
        :contact_name => "Contact Name",
        :email_address => "Email Address",
        :agency_mission => "MyText"
      )
    ])
  end

  it "renders a list of agencies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "State".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Website Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Contact Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
