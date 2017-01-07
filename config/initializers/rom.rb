WebMock.enable!
WebMock
  .stub_request(:get, 'http://foo.com/services/data/v20.0/sobjects/Contact/1')
  .to_return(body: Rails.root.join('spec/fixtures/contact.json'))

class RequestHandler
  def call(dataset)
    uri = URI(dataset.uri)
    uri.path = dataset.absolute_path
    uri.query = URI.encode_www_form(dataset.params)

    http = Net::HTTP.new(uri.host, 80)
    request_klass = Net::HTTP.const_get(Inflecto.classify(dataset.request_method))

    request = request_klass.new(uri.request_uri)
    dataset.headers.each_with_object(request) do |(header, value), object|
      object[header.to_s] = value
    end

    http.request(request)
  end
end

class ResponseHandler
  def call(response, dataset)
    Array([JSON.parse(response.body, symbolize_names: true)]).flatten
  end
end

ROM::Rails::Railtie.configure do |config|
  config.gateways[:default] = [:http, {
    uri: 'https://foo.com',
    headers: {
      Accept: 'application/json'
    },
    request_handler: RequestHandler.new,
    response_handler: ResponseHandler.new
  }]
end
