# Based on:
#   http://stackoverflow.com/questions/6021372/best-way-to-create-unique-token-in-rails
module Tokenable
  extend ActiveSupport::Concern

  protected

  def generate_token(opts={})
    attr = opts[:attribute] || :token
    size = opts[:size]
    t = loop do
      random_token = SecureRandom.urlsafe_base64(size, false)
      break random_token unless self.class.exists?(attr => random_token)
    end
    instance_eval("self.#{attr}=#{t.inspect}")
    binding.pry
  end
end
