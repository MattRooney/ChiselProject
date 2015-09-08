require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require '../lib/methods.rb'

class ParagraphTest < Minitest::Test
  def test_count_hashtags
    skip
    header = Header.new("### Hello")
    assert_equal 3, header.count_hashtags
  end

  def test_remove_hastags
    skip
    header = Header.new("### Hello")
    assert_equal "Hello", header.remove_hashtags
  end

  def test_it_applies_correct_html_header
    header = Header.new("### Hello")
    assert_equal "<h3>Hello</h3>", header.html_h
  end

  def test_it_adds_p
    paragraph = Paragraph.new(["Paragraph 1."])
    assert_equal "<p>Paragraph 1.</p>", paragraph.html_p
  end

  def test_it_handles_a_blank_line
    paragraph = Paragraph.new([""])
    assert_equal "<p></p>", paragraph.html_p
  end
end

class WordTest < Minitest::Test
  def test_it_italics
    word = Word.new("*one*")
    assert_equal "<em>one</em>", word.italic
  end

  def test_it_bolds
    word = Word.new("**bold**")
    assert_equal "<strong>bold</strong>", word.bold
  end
end
