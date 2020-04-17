require "./src/telegraph.cr"
require "time"
require "json"

class KeyError < Exception; end

def evaluate(response)
  x = JSON.parse(response)
  status = x["ok"]
  begin
    if (status == true)
      puts status
      x = Telegraph::CreateAccount.from_json(response)
      puts x.result.auth_url
      puts typeof(x)
    else
      x = Telegraph::Error.from_json(response)
      puts x.error
      # puts x["error"]
    end
  rescue exception : KeyError
    puts "#{exception}"
  end
end

elapsed_time = Time.measure do
  short_name = "lulzx"
  author_name = "lulzx"
  response = Telegraph.createAccount(short_name, author_name)
  evaluate(response)

  path = "tdwin-09-18"
  return_content = false
  # response = Telegraph.getPage(path)
  # response = Telegraph.getPage(path, return_content)
  # evaluate(response)

  access_token = "b968da509bb76866c35425099bc0989a5ec3b32997d55286c657e6994bbb"
  limit = 3
  offset = 0
  # response = Telegraph.getPageList(access_token, limit)
  # evaluate(response)
end
puts elapsed_time
