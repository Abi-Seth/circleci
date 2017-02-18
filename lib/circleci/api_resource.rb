# frozen_string_literal: true
module CircleCi
  ##
  #
  # ApiResource is a parent class for rest resources for the
  # CircleCI API. It allows for request conifugration to be
  # set per request if needed, otherwise the default global
  # CircleCi.config is used
  class ApiResource
    attr_reader :conf

    def initialize(conf = nil)
      @conf = conf ? conf : CircleCi.config
    end
  end
end
