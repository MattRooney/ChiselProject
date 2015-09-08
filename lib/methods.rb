# METHODS
class Chisel
  def initialize(paragraph)
    @paragraph = paragraph
  end

  def paragraph
    @paragraph
  end

  def header
    h_count = paragraph.count "#"
    plain_header = paragraph.delete "#"
    stripped_header = plain_header.lstrip
    "<h#{h_count}>#{stripped_header}</h#{h_count}>"
  end

  def html_p
    paragraph.unshift("<p>")
    paragraph << "</p>"
    paragraph.join
  end

  def html_ul
    plain_list = paragraph.delete "*"
    stripped_list = plain_list.lstrip
    "<li>#{stripped_list}</li>"
  end

  def html_ol
    array = paragraph.split " "
    list = array.drop(1)
    li_list = list.join
    "<li>#{li_list}</li>"
  end
end

class Word
  def initialize(word)
    @word = word
  end

  def word
    @word
  end

  def emphasis
    plain_word = word.delete "*"
    "<em>#{plain_word}</em>"
  end

  def italics
    plain_word = word.delete "_"
    "<em>#{plain_word}</em>"
  end

  def bold
    plain_word = word.delete "*"
    "<strong>#{plain_word}</strong>"
  end
end
