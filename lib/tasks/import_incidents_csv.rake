# require 'csv'
# namespace :import_incidents_csv do
#   task :create_incidents => :environment do
#     csv_text = File.read('............')
#     csv = CSV.parse(csv_text, :headers => true)
#     csv.each do |row|
#       Event.create!(row.to_hash)
#     end
#   end
# end