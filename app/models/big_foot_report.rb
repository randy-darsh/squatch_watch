class BigFootReport < ApplicationRecord
  def self.state_count(state_name)
    where(state: state_name).count
  end
end
