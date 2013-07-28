Rails.application.config.middleware.use OmniAuth::Builder do
  OmniAuth.config.logger = Rails.logger
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET'], scope: ""
end
