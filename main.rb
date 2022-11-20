
file_location = "sample.txt"

# ---Accessing files in the directory---
# using the File.open method
# file = File.open(file_location)
# content = file.read

#using the File.read method
# content = File.read(file_location)

# puts content

# --- Writing to files---
new_content = "New Content!"

# Overwrites existing content
# File.write(file_location, new_content)

# Using additional argument to append to existing content
# File.write(file_location, new_content, mode: "a")

# Using code blocks to append to existing content
File.open(file_location, "a") do |file|
  file.write(new_content)
end
