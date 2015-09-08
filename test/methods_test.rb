require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require '../lib/methods.rb'

class ParagraphTest < Minitest::Test
  def test_count_hashtags
    skip
    paragraph = Paragraph.new(["### Hello"])
    assert_equal 3, paragraph.count_hashtags
  end

  def test_remove_hastags
    skip
    paragraph = Paragraph.new("### Hello")
    assert_equal "Hello", paragraph.remove_hashtags
  end

  def test_it_applies_correct_html_header
    paragraph = Paragraph.new("### Hello")
    assert_equal "<h3>Hello</h3>", paragraph.header
  end

  def test_it_adds_p
    paragraph = Paragraph.new(["Paragraph 1."])
    assert_equal "<p>Paragraph 1.</p>", paragraph.html_p
  end

  def test_it_handles_a_blank_line
    paragraph = Paragraph.new([""])
    assert_equal "<p></p>", paragraph.html_p
  end

  def test_it_does_unordered
    paragraph = Paragraph.new("* First This")
    assert_equal "<li>First This</li>", paragraph.html_ul
  end

  def test_it_does_ordered
    paragraph = Paragraph.new("1. First thing")
    assert_equal "<li>First thing</li>", paragraph.html_ol
  end
end

class WordTest < Minitest::Test
  def test_it__has_emphasis
    word = Word.new("*one*")
    assert_equal "<em>one</em>", word.emphasis
  end

  def test_it_italics
    word = Word.new("_italics_")
    assert_equal "<em>italics</em>", word.italics
  end

  def test_it_bolds
    word = Word.new("**bold**")
    assert_equal "<strong>bold</strong>", word.bold
  end
end
