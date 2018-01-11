require 'rails_helper'

describe 'user visits a reports show page' do
  it 'they see a report' do
    big_foot = create(:big_foot_report)
    stub_omniauth
    visit root_path

    click_on "Login with Google"

    visit big_foot_report_path(big_foot.id)

    expect(page).to have_content("Squatch Report")
    expect(page).to have_content("Report Class")
    expect(page).to have_content("Location Details")
  end
end
