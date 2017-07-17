class GithubApi < ApplicationRecord
  belongs_to :user
  def self.profile(username)
    HTTParty.get(
      "https://api.github.com/users/mcbello").
        parsed_response
  end
end
