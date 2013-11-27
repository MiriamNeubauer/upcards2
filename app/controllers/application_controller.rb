class ApplicationController < ActionController::Base
  protect_from_forgery
  require 'twilio-ruby'
  include TwiliosHelper
end
