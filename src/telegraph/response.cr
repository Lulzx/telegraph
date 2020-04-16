require "json"

module Telegraph

  class CreateAccount
    JSON.mapping({
      ok: Bool,
      result: CreateAccountResult
    })
  end

  private class CreateAccountResult
    JSON.mapping({
      short_name: String,
      author_name: String,
      author_url: String,
      access_token: String,
      auth_url: String
    })
  end

  class Error
    JSON.mapping({
      ok: Bool,
      error: String
    })
  end
end

#response = %|{"ok":true,"result":{"short_name":"abc","author_name":"","author_url":"","access_token":"3330dae43d9a721f632d23a7bb241adc23630a582c3e93c9d6d9d6b6a283","auth_url":"https:\/\/edit.telegra.ph\/auth\/6wDSsy7yq2DEDvANxZTnsSKiYBk6YNf2iRSIp0gN2S"}}|
#r = Telegraph::CreateAccount.from_json(response)
#puts r.result.auth_url