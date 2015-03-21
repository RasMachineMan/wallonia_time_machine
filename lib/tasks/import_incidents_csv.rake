require 'csv'

namespace :import_incidents_csv do
  task :create_incidents => :environment do
    CSV.foreach("app/wallonia_time_machine.csv", :headers => true) do |row|
      Event.create!(row.to_hash)
    end
  end
end