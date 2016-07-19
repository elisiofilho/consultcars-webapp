module DefaultHelper

  def search_json_data (url,param={})
      uri = URI(url)
      response = Net::HTTP.post_form(uri, param)
      return JSON.parse response.body
  end
end