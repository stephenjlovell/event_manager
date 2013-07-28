require 'csv'
require 'sunlight/congress'

Sunlight::Congress.api_key = "e179a6973728c4dd3fb1204283aaccb5"

def clean_zipcode(zip)
  zip.to_s.rjust(5,"0")[0..4]
end

def get_legislator_names(zip)
  legislators = Sunlight::Congress::Legislator.by_zipcode(zip)
  names = legislators.collect do |legislator|
    "#{legislator.first_name} #{legislator.last_name}"
  end
  names.join(', ')
end


puts "Event Manager Initialized"

contents = CSV.open 'event_attendees.csv', headers: true, header_converters: :symbol

contents.each do |row|
  name = row[:first_name]
  zip = clean_zipcode(row[:zipcode])
  legislators = get_legislator_names(zip)

  puts "#{name} #{zip}  -  #{legislators}"
end