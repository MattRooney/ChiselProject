
  def parse_h1(h1)
      if h1[0].include? "#"
        h1 = h1.delete "# "
        "<h1>#{h1}</h1>"
      else "<p>#{h1}</p>"
      end
  end

  def parse_h2(h2)
    if h2[0..1].include? "##"
      h2 = h2.delete "## "
      "<h2>#{h2}</h2>"
    end
  end

  def parse_h3(h3)
    if h3[0..2].include? "###"
      h3 = h3.delete "### "
      "<h3>#{h3}</h3>"
    end
  end

  def parse_h4(h4)
    if h4[0..3].include? "####"
      h4 = h4.delete "#### "
      "<h4>#{h4}</h4>"
    end
  end

  def parse_h5(h5)
    if h5[0..4].include? "#####"
      h5 = h5.delete "##### "
      "<h5>#{h5}</h5>"
    end
  end

  def parse_h6(h6)
    if h6[0..5].include? "######"
      h6 = h6.delete "###### "
      "<h6>#{h6}</h6>"
    end
  end

# text = "This is not a header"
#parse_h1(text)


#   def parse_header
#       if string[5]
#         parse_h5
#       elsif string[6]
#         parse_h6
#
#       else
#     end
#   end
#

# end_with?
# lines(separator=$/)
# same as str.each_line(separator).to_a
# line_array = line.split
