require 'rails_helper'

describe 'User uses the search bar' do
  it 'they search for sightings by state' do
    stub_omniauth
    visit root_path

    click_on "Login with Google"

    fill_in "search", with: "Alabama"
    click_button

    expect(current_path).to eq('/search')
    expect(page).to have_content("Alabama")
  end
end
