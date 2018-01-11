require 'rails_helper'

describe 'BigFootReport' do
  before :each do 
    create_list(:big_foot_report, 5)
  end
  context 'valid big foot' do
    it 'big foot report can be created' do
    big_foot = create(:big_foot_report)

    expect(big_foot).to be_a(BigFootReport)
    expect(big_foot).to be_valid
    end
  end

  context 'class methods' do
    it '.state_count(state_name)' do

      expect(BigFootReport.state_count("state")).to eq(5)
    end

    it '.search_by_state(state)' do

      expect(BigFootReport.search_by_state("state").count).to eq(5)
    end

    it '.search_by_year(year)' do

      expect(BigFootReport.search_by_year("year").count).to eq(5)
    end

    it '.search_by_season(season)' do

      expect(BigFootReport.search_by_season("season").count).to eq(5)
    end

    it '.search_by_report_class(report_class)' do

      expect(BigFootReport.search_by_report_class("class").count).to eq(5)
    end
  end

end
