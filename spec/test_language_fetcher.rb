require_relative "spec_helper"

class TestLanguageFetcher < Minitest::Test
  def setup
    @fetcher = LanguageFetcher.new
  end

  def test_that_it_returns_a_favourite_programming_language_for_existing_user
    assert_equal "Ruby", @fetcher.get_favourite_language_for("oguzcanhuner")
  end
end
