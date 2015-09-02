require 'minitest/autorun'
require 'minitest/pride'
require_relative 'chisel'

class ChiselTest < Minitest::Test
  def test_parse_h1
      header = parse_h1("# hello")
      assert_equal "<h1>hello</h1>", header
  end

  def test_parse_h1_ignores_two_hashtags
    header = parse_h1("## hello")
    assert_equal "## hello", header
  end

  def test_parse_h2
    header = parse_h2("# hello")
    assert_equal "<h2>hello</h2>", header
  end

  def test_parse_h3
    header = parse_h3("### hello")
    assert_equal "<h3>hello</h3>", header
  end
end
