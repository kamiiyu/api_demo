require 'digest/sha1'
class ApiConstraints
  def initialize(options)
    @version = options[:version]
    @default = options[:default]
  end

  def matches?(req)
    @default || authenticity_check(req) #req.headers['Accept'].include?("application/vnd.api_demo.v#{@version}")
  end

  protected
  def authenticity_check(req)
    # 2a7f629d41e44325413f8966af026ec978eca044
    # appid appsecret
    _client1_token = Digest::SHA1.hexdigest 'client1_api_demo_20160225'
    req.headers['Accept'].include?("application/vnd.api_demo.v#{@version}.t#{_client1_token}")
  end


end
