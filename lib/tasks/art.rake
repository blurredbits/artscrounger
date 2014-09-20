require 'csv'

namespace :art do
  desc "Import Lafayette Art CSV file"
  task import: :environment do
    csv_text = File.read('lafayette-co-public-art.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      ArtPiece.create!(row.to_hash)
    end
  end
end
