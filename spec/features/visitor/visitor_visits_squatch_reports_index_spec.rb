require 'rails_helper'

describe 'Visitor visits the squatch reports page' do
  it 'they see a list of the squatch reports' do
    visit big_foot_reports_path

    expect(page).to have_content("Squatch Reports")
  end
end
