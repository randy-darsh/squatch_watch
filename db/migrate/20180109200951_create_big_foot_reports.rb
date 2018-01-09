class CreateBigFootReports < ActiveRecord::Migration[5.1]
  def change
    create_table :big_foot_reports do |t|
      t.integer :report_number
      t.string :report_class
      t.string :county
      t.string :season
      t.text :location_details
      t.text :other_witnesses
      t.string :year
      t.string :state
      t.text :observed
      t.string :time_and_conditions
      t.text :also_noticed
      t.text :other_stories
      t.string :nearest_town
      t.string :nearest_road
      t.string :environment
      t.string :month
      t.string :date
      t.text :a_g_references
    end
  end
end
