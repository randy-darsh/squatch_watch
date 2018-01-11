require 'csv'

csv_text = File.read(Rails.root.join('db', 'data', 'bfro_reports.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  report = BigFootReport.new
  report.id = row['report_number']
  report.report_number = row['report_number']
  report.report_class = row['report_class']
  report.county = row['county']
  report.season = row['season']
  report.location_details = row['location_details']
  report.other_witnesses = row['other_witnesses']
  report.year = row['year']
  report.state = row['state']
  report.observed = row['observed']
  report.time_and_conditions = row['time_and_conditions']
  report.also_noticed = row['also_noticed']
  report.other_stories = row['other_stories']
  report.nearest_town = row['nearest_town']
  report.nearest_road = row['nearest_road']
  report.environment = row['environment']
  report.month = row['month']
  report.date = row['date']
  report.a_g_references = row['a_g_references']
  report.save
end

puts "#{BigFootReport.count} big foot reports"