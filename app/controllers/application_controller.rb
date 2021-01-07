class ApplicationController < ActionController::Base
  before_action :basic_auth
end

private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == 'kenshi' && password == '063113'
    end
  end