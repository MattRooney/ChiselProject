
  def parse_h1(string)
    if string.include? "# "
      string = string.delete "# "
      "<h1>#{string}</h1>"
    else
      string
    end
  end                            # => :parse_h1

  def parse_h2(string)
    string = string.delete "## "
    "<h2>#{string}</h2>"
  end                             # => :parse_h2

  def parse_h3(string)
    string = string.delete "### "
    "<h3>#{string}</h3>"
  end                              # => :parse_h3

# text = "This is not a header"
#parse_h1(text)
