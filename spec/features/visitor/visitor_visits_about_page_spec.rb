require 'rails_helper'

describe 'Visitor visits the about page' do
  it 'they see the about page' do
    visit about_path

    expect(page).to have_content('About Squatch Watch')
  end
end
