require 'csv'

namespace :import_incidents_csv do
  task :create_incidents => :environment do
    CSV.foreach("app/wallonia_tm.csv", :headers => true) do |row|
      Event.create!(row.to_hash)
    end
  end
end