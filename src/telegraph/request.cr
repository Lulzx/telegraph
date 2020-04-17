require "http/client"

module Request
  def get(method, params) : String
    response = HTTP::Client.get "https://api.telegra.ph/#{method}?" + HTTP::Params.encode(params)
    return response.body
  end
end
