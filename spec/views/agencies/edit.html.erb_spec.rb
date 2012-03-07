require 'spec_helper'

describe "agencies/edit" do
  before(:each) do
    @agency = assign(:agency, stub_model(Agency,
      :federal_id_number => 1,
      :name => "MyString",
      :year_admitted => "",
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "",
      :phone => "",
      :fax => "",
      :website_address => "MyString",
      :contact_name => "MyString",
      :email_address => "MyString",
      :agency_mission => "MyText"
    ))
  end

  it "renders the edit agency form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => agencies_path(@agency), :method => "post" do
      assert_select "input#agency_federal_id_number", :name => "agency[federal_id_number]"
      assert_select "input#agency_name", :name => "agency[name]"
      assert_select "input#agency_year_admitted", :name => "agency[year_admitted]"
      assert_select "input#agency_address", :name => "agency[address]"
      assert_select "input#agency_city", :name => "agency[city]"
      assert_select "input#agency_state", :name => "agency[state]"
      assert_select "input#agency_zip", :name => "agency[zip]"
      assert_select "input#agency_phone", :name => "agency[phone]"
      assert_select "input#agency_fax", :name => "agency[fax]"
      assert_select "input#agency_website_address", :name => "agency[website_address]"
      assert_select "input#agency_contact_name", :name => "agency[contact_name]"
      assert_select "input#agency_email_address", :name => "agency[email_address]"
      assert_select "textarea#agency_agency_mission", :name => "agency[agency_mission]"
    end
  end
end
