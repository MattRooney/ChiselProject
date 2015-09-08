# require-relative './read_markdown.rb'
require_relative './methods.rb'                                                                       # => true
# markdown_handle = File.open(ARGV[0], "r")
# incoming_text = markdown_handle.read
# markdown_handle.close
markdown_input = File.open("/Users/mattrooney/code/1508/projects/Chisel/lib/my_input.markdown", "r")  # => #<File:/Users/mattrooney/code/1508/projects/Chisel/lib/my_input.markdown>
incoming_text = markdown_input.read                                                                   # => "# My Life in Desserts\n\n## Chapter 1: The Beginning\n\n\"You just *have* to try the cheesecake,\" he said. \"Ever since it appeared in\n**Food & Wine** this place has been packed every night.\"\n"
html_output = []                                                                                      # => []

markdown_lines = incoming_text.split "\n"  # => ["# My Life in Desserts", "", "## Chapter 1: The Beginning", "", "\"You just *have* to try the cheesecake,\" he said. \"Ever since it appeared in", "**Food & Wine** this place has been packed every night.\""]

markdown_lines.each do |sentence|               # => ["# My Life in Desserts", "", "## Chapter 1: The Beginning", "", "\"You just *have* to try the cheesecake,\" he said. \"Ever since it appeared in", "**Food & Wine** this place has been packed every night.\""]
  if sentence.start_with? "#"                   # => true
    sentence.header                             # ~> NoMethodError: undefined method `header' for "# My Life in Desserts":String
    html_sentence = sentence.delete "#"
  # elsif sentence.start_with? "*"
  # # elsif sentence.chars[0] =
  # elsif sentence.include? "*"
  #   asterisk_count = sentence.count "*"
      else html_output << "<p>#{sentence}</p>"
  end
end


  # # unless markdown_lines[0..1] = "<h"
  #  markdown_lines.each do |sentence|
  #    html_output << "<p>#{sentence}</p>"
  #  end

puts html_output


# end

#
# markdown_line.each do |sentence|
#   if sentence.include? "*" && sentence.count "*" % 2 = 1
#     # sentence.unordered_list
#   elsif sentence.include? "*" && sentence.count "*" % 2 = 0
#     # sentence.emphasis
#     empasis_sentence = sentence.split " "
#
#     html_text << ""
#   end
# end
# html_text.each do |header|
#
# end

# ~> NoMethodError
# ~> undefined method `header' for "# My Life in Desserts":String
# ~>
# ~> /Users/mattrooney/code/1508/projects/Chisel/lib/chisel.rb:14:in `block in <main>'
# ~> /Users/mattrooney/code/1508/projects/Chisel/lib/chisel.rb:12:in `each'
# ~> /Users/mattrooney/code/1508/projects/Chisel/lib/chisel.rb:12:in `<main>'
