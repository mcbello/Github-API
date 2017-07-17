class GithubController < ApplicationController
  def index
    @profile = GithubApi.profile(params[:username])
  end
end
