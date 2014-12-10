module QuestionsHelper
  def github_zen
    base_uri = "https://api.github.com/zen"
    username = ENV["github_username"]
    password = ENV["github_password"]
    auth = {username: username, password: password}
    response = HTTParty.get(base_uri, basic_auth: auth)
  end
end
