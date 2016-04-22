require 'net/http'

def nbg_client(secondary_key, path, method='GET', body=nil)
    uri = URI('https://nbgdemo.azure-api.net/testnodeapi' + path)
    uri.query = URI.encode_www_form({
    })

    if method == 'GET'
        request = Net::HTTP::Get.new(uri.request_uri)
    else
        request = Net::HTTP::Post.new(uri.request_uri)
    end
    # Request headers
    request['Ocp-Apim-Subscription-Key'] = secondary_key
    # Request body
    # request.body = body

    response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
        http.request(request)
    end

    return response
end