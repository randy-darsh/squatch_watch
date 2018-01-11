require 'rails_helper'

describe 'user visits the report index page' do
  it 'they see a list of squatch reports' do
    create_list(:big_foot_report, 5)
    stub_omniauth
    visit root_path

    click_on "Login with Google"

    visit big_foot_reports_path

    expect(page).to have_content("Squatch Reports")
    expect(page).to have_content("Report Number")
    expect(page).to have_link("class")
  end
end
