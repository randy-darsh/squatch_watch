class BigFootReport < ApplicationRecord
  # validates :report_number, presence: true
  def self.state_count(state_name)
    where(state: state_name).count
  end

  def self.order_by_report_number
    order(:report_number)
  end

  def find_date
    "#{date} #{month} #{year}"
  end

  def self.search_by_state(state)
    where(state: state)
  end

  def self.search_by_report_number(report_number)
    where(report_number: report_number)
  end
end
