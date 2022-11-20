require 'json'
require 'csv'
require 'net/http'
require 'date'

archive_file = "btc_archive.csv"
endpoint = "https://api.coindesk.com/v1/bpi/currentprice.json"

def add_price(file_location, current_date, current_price)
    CSV.open(file_location, "a") do |f|
        f << [current_date, current_price]
    end
end

def extract_data(content)
    data = JSON.parse(content)

    current_date = Date.parse(data["time"]["updated"]).strftime("%Y-%m-%d")
    current_price = data["bpi"]["USD"]["rate_float"]

    return { current_date: current_date, current_price: current_price }
end