class Bitcoin::Client
  attr_reader :api
  def user; api.user; end
  def pass; api.pass; end
  def host; api.host; end
  def port; api.port; end
  def ssl;  api.ssl;  end
  def ssl?; api.ssl?; end
  def user=(a); api.user = a; end
  def pass=(a); api.pass = a; end
  def host=(a); api.host = a; end
  def port=(a); api.port = a; end
  def ssl=(a);  api.ssl  = a; end

  def options
    api.options
  end

  def initialize(user, pass, options = {})
    @api = Bitcoin::API.new({ :user => user, :pass => pass }.merge(options))
  end

  def method_missing(method_sym, *args, &block)
    @api.request(method_sym.to_s, *args)
  end

end
