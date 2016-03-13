require 'json'
require 'rest-client'
require 'net/http'

files = %w[
  build
  config
  http
  project
  recent_builds
  request_error
  response
  user
]

files.each { |path| require_relative "./circleci/#{path}" }

##
#
# CircleCi module configured to for endpoint interactions
module CircleCi
  module_function

  ##
  #
  # @example Configure CircleCi with your token
  #   CircleCi.configure do |config|
  #     config.token = 'my-token'
  #   end

  def configure
    yield config
  end

  ##
  #
  # @return [CircleCi::Config]

  def config
    @config ||= Config.new
  end

  def http # @private
    Http.new(config)
  end

  ##
  #
  # Get recent builds for an organization
  #
  # @param name   [String] Name of the organization. Currently CircleCi treats
  #               the name case sensetive so make sure the spelling is the same
  #               as the github organisation.
  # @param params [Hash] Additional query params.
  # @return       [CircleCi::Response] - Response object.

  def organization(name, params = {})
    http.get "/organization/#{name}", params
  end
end
