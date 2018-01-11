require 'rails_helper'

describe 'User visits home page' do
  it 'they log in using google oauth' do
    stub_omniauth

    visit root_path

    expect(page).to have_link("Login with Google")

    click_link "Login with Google"
    expect(page).to have_content("Randy Springer")
    expect(page).to have_link("Logout")
  end

  it 'they can log out' do
    stub_omniauth

    visit root_path

    expect(page).to have_link("Login with Google")

    click_link "Login with Google"
    expect(page).to have_content("Randy Springer")
    expect(page).to have_link("Logout")

    click_link("Logout")
    expect(page).to have_link("Login with Google")
  end
end
