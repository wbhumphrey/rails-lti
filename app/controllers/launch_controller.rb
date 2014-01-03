require 'oauth/request_proxy/rack_request'

class LaunchController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    require 'ims/lti'
    @tp = IMS::LTI::ToolProvider.new("TEST_KEY", "TEST_SECRET", params)
    if !@tp.valid_request?(request)
      render 'error'
    end
  end
end
