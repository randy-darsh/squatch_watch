require 'rails_helper'

describe 'Visitor visits the home page' do
  it 'they see the home page' do
    visit root_path

    expect(page).to have_content('Login with Google')
  end
end
