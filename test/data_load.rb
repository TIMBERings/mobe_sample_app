require 'mobe-client'
require 'json'

SERVER = 'localhost'
PORT = 8000

module DataLoad

  def register_get(language, message)
    configuration = {}
    configuration['method'] = 'GET'
    configuration['path'] = "/test_get?language=#{language}"
    configuration['response'] = {message: message}.to_json
    configuration['statusCode'] = 200 

    register_mock_response(SERVER, PORT, configuration)
  end

  def unregister_get(language)
    configuration = {}
    configuration['method'] = 'GET'
    configuration['path'] = "/test_get?language=#{language}"

    unregister_mock_response(SERVER, PORT, configuration)
  end

  def register_post
    configuration = {}
    configuration['method'] = 'POST'
    configuration['path'] = "/test_post"
    configuration['response'] = nil.to_json
    configuration['statusCode'] = 200 

    register_intercept(SERVER, PORT, configuration)
  end

  def register_put
    configuration = {}
    configuration['method'] = 'PUT'
    configuration['path'] = "/test_put"
    configuration['response'] = nil.to_json
    configuration['statusCode'] = 200 

    register_intercept(SERVER, PORT, configuration)
  end

  def register_delete(id)
  configuration = {}
  configuration['method'] = 'DELETE'
  configuration['path'] = "/test_delete/#{id}"
  configuration['response'] = nil.to_json
  configuration['statusCode'] = 200 

  register_intercept(SERVER, PORT, configuration)
  end
end

