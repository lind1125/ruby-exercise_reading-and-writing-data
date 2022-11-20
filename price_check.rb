require 'csv'

file_location = "prices.csv"

content = File.read(file_location)

data = CSV.parse(content)

data.each do |d|
  puts "DATE: #{d[0]} PRICE: #{d[1]}"
end

