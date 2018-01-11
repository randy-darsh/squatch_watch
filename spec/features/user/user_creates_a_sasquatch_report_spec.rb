require 'rails_helper'

describe 'user visits the squatch report path' do
  it 'they can create a squatch report' do
    stub_omniauth
    visit root_path

    click_on "Login with Google"

    visit new_big_foot_report_path

    select "Class A", :from => "big_foot_report_report_class"
    select "Alabama", :from => "big_foot_report_state"
    select "Fall", :from => "big_foot_report_season"
    select "5", :from => "big_foot_report_date"
    select "April", :from => "big_foot_report_month"
    select "1987", :from => "big_foot_report_year"
    fill_in "big_foot_report_environment" , with: "environment"
    fill_in "big_foot_report_location_details" , with: "location"
    fill_in "big_foot_report_observed" , with: "observation"
    fill_in "big_foot_report_also_noticed" , with: "also noticed"
    fill_in "big_foot_report_other_witnesses" , with: "other witnesses"
    fill_in "big_foot_report_time_and_conditions" , with: "time and conditions"
    fill_in "big_foot_report_county" , with: "county"
    fill_in "big_foot_report_nearest_town" , with: "town"
    fill_in "big_foot_report_nearest_road" , with: "road"
    fill_in "big_foot_report_other_stories" , with: "other stories"

    click_on "Submit"

    expect(current_path).to eq(big_foot_report_path(BigFootReport.last.id))
  end
end
