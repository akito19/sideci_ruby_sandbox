class AboutController < ApplicationController
  def us
    @octkit_client = current_user.octkit_client
  end

  def enterprise?
    enterprise_account_id.present?
  end

  def operate_repo_class
    enterprise? ? 'EnterpriseGithubRepository' : 'GithubRepository'
  end

  def operate_github_repopsitory
    @operate_github_repopsitory ||= operate_repo_class.classify.constantize
  end

  def octokit_client(oauth_token = nil)
   return @octokit_client if @octokit_client.present? && oauth_token.nil?

    @octokit_client = begin
      Octokit.configure do |c|
        c.api_endpoint = api_endpoint || GITHUB_API_ENDPOINT
      end
      Octokit::Client.new(access_token: oauth_token || github_oauth_token)
    end
  end

  alias_method :octokit, :octokit_client
end
