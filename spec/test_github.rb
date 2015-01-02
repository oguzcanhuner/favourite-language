require_relative "spec_helper"

class TestGithub < Minitest::Test
  def setup
    @client = Github.new
  end

  def test_that_it_returns_a_favourite_programming_language_for_existing_user
    @client.get_favourite_language_for("oguzcanhuner")
  end

  def test_that_it_returns_a_favourite_programming_language_for_existing_user
    assert_equal "ruby", @client.get_favourite_language_for("oguzcanhuner")
  end
end
