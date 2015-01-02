require "github_api"

class LanguageFetcher
  def initialize
    @client = Github.new
  end

  def get_favourite_language_for username
    repos = @client.repos.list user: username
    language_with_frequency = calculate_favourite_from(repos)

    return language_with_frequency[0]
  end

  private

  def calculate_favourite_from repos
    languages = Hash.new(0)

    repos.each do |repo|
      language = repo.language
      languages[language] += 1
    end

    return languages.sort_by { |language, frequency| frequency }.last
  end
end
