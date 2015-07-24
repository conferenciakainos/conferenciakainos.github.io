require 'json'

result = {}

def has_link?(text)
  text.include?("<http")
end

Dir.entries(".").each do |file|
  content = File.read(file)
  parsed = JSON.parse(content)

  parsed.each do |message|
    result[user] ||= 0
    result[user] += 1 if has_link?(message['text'])
  end
end

puts result