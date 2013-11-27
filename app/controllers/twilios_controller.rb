class TwiliosController < ApplicationController
require 'twilio-ruby'

  def index
    #for responding
    @reply = parse_message(params[:From], params[:MediaUrl])
    render 'index.xml.erb', :content_type => 'text/xml'
    @image = params([:MediaUrl])
  end

  def show
    @image = params([:MediaUrl])
  end

end
