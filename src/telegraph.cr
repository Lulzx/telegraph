require "./telegraph/*"

module Telegraph
  include Request
  extend self

  def create_account(short_name : String, author_name : String = "", author_url : String = "")
    method = "createAccount"
    params = {"short_name" => short_name, "author_name" => author_name, "author_url" => author_url}
    get(method, params)
  end

  def create_page(access_token : String, title : String, author_name : String = "", author_url : String = "", content : Array = [] of String, return_content : Bool = false)
    method = "createPage"
    params = {"access_token" => access_token, "title" => title, "author_name" => author_name, "author_url" => author_url, "content" => content, "return_content" => return_content}
    get(method, params)
  end

  def edit_account_info(access_token : String, short_name : String, author_name : String = "", author_url : String = "")
    method = "editAccountInfo"
    params = {"access_token" => access_token, "short_name" => short_name, "author_name" => author_name, "author_url" => author_url}
    get(method, params)
  end

  def edit_page(access_token : String, path : String, title : String, content : Array, author_name : String)
    method = "editPage"
    params = {"access_token" => access_token, "path" => path, "title" => title, "content" => content, "author_name" => author_name}
    get(method, params)
  end

  def account_info(access_token : String, fields : Array = [“short_name”, “author_name”, “author_url”])
    method = "getAccountInfo"
    params = {"access_token" => access_token, "fields" => fields}
    get(method, params)
  end

  def page(path : String, return_content : Bool = false)
    method = "getPage"
    params = {"path" => path, "return_content" => return_content.to_s}
    get(method, params)
  end

  def page_list(access_token : String, offset : Int32 = 0, limit : Int32 = 50)
    method = "getPageList"
    params = {"access_token" => access_token, "offset" => offset.to_s, "limit" => limit.to_s}
    get(method, params)
  end

  def views(path : String, year : Int32, month : Int32, day : Int32, hour : Int32)
    method = "getViews"
    params = {"path" => path, "year" => year, "month" => month, "day" => day, "hour" => hour}
    get(method, params)
  end

  def revoke_access_token(access_token : String)
    method = "revokeAccessToken"
    params = {"access_token" => access_token}
    get(method, params)
  end
end
