markdown_handle = File.open(ARGV[0], "r")

incoming_text = markdown_handle.read

markdown_handle.close

puts incoming_text

# html_text = incoming_text.chisel

# writer = File.open(ARGV[1], "w")
#
# writer.write(html_text)
#
# writer.close
