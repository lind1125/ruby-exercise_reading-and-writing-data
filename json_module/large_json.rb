require 'json'


data = {
  records: []
}

1000000.times do
  data[:records] << { foo: "bar" }
end

# this will generate a single line of data
# content = data.to_json

# pretty_generate method will use proper indentation and line breaks for readability
content = JSON.pretty_generate(data)

File.write("large_json.json", content)