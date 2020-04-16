require "./telegraph/*"

module Telegraph include Request
  extend self
  def createAccount(short_name : String, author_name : String, author_url : String)
    method = "createAccount"
    params = HTTP::Params.encode({"short_name" => short_name, "author_name" => author_name, "author_url" => author_url})
    get(method, params)
  end
  
  def createAccount(short_name : String, author_name : String)
    method = "createAccount"
    params = HTTP::Params.encode({"short_name" => short_name, "author_name" => author_name})
    get(method, params)
  end

  def createPage(access_token : String, title : String, author_name : String, author_url : String, content : Array, return_content : Bool = false)
    method = "createPage"
    params = HTTP::Params.encode({"access_token" => access_token, "title" => title, "author_name" => author_name, "author_url" => author_url, "content" => content, "return_content" => return_content})
    get(method, params)
  end

  def editAccountInfo(body : String)
    method = "editAccountInfo"
    params = HTTP::Params.encode({"xyz" => xyz, "abc" => abc})
    get(method, params)
  end

  def editPage(access_token : String, path : String, title : String, content : Array, author_name : String, )
    method = "editPage"
    params = HTTP::Params.encode({"access_token" => access_token, "abc" => abc, "abc" => abc, "abc" => abc, "abc" => abc, "abc" => abc, "abc" => abc})
    get(method, params)
  end

  def getAccountInfo(body : String)
    method = "getAccountInfo"
    params = HTTP::Params.encode({"xyz" => xyz, "abc" => abc})
    get(method, params)
  end

  def getPage(path : String, return_content : Bool = false)
    method = "getPage"
    params = HTTP::Params.encode({"path" => path, "return_content" => return_content.to_s})
    get(method, params)
  end

  def getPageList(access_token : String, offset : Int32 = 0, limit : Int32 = 50)
    method = "getPageList"
    params = HTTP::Params.encode({"access_token" => access_token, "offset" => offset.to_s, "limit" => limit.to_s})
    get(method, params)
  end

  def getPageList(access_token : String, limit : Int32 = 50)
    method = "getPageList"
    params = HTTP::Params.encode({"access_token" => access_token, "limit" => limit.to_s})
    get(method, params)
  end

  def getViews(path : String, year : Int32, month : Int32, day : Int32, hour : Int32)
    method = "getViews"
    params = HTTP::Params.encode({"xyz" => xyz, "abc" => abc})
    get(method, params)
  end

  def revokeAccessToken(access_token : String)
    method = "revokeAccessToken"
    params = HTTP::Params.encode({"access_token" => access_token})
    get(method, params)
  end
end
