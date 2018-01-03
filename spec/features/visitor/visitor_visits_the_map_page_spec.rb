require 'rails_helper'

describe 'Visitor visits the map page' do
  it 'they see the map' do
    visit '/squatch_map'

    expect(page).to have_content("Squatch Map")
  end
end
