require 'spec_helper'

describe "agencies/show" do
  before(:each) do
    @agency = assign(:agency, stub_model(Agency,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/State/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Website Address/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Contact Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email Address/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
