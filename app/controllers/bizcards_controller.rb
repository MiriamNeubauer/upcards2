class BizcardsController < ApplicationController

before_filter :authenticate_user!
require 'carrierwave/orm/activerecord'
require 'twilio-ruby'

  def index
    @email = current_user.email
    # @uploader = AvatarUploader.new
    @bizcard = Bizcard.new
    @bizcards = Bizcard.all
    @bizcard_id = params[:id]

    respond_to do |format|
    format.html
    format.json {render json: @bizcards}
    end
  end

  # def new
  #   @bizcard = Bizcard.new
  #   @bizcards = Bizcard.all
  # end

  def create
    @bizcard = Bizcard.create(params[:bizcard])
    @bizcard_id = params[:id]
    # redirect_to bizcards_path
    # render json: @bizcard, status: 201
    respond_to do |format|
    format.js
    end
  end

  # def show
  #   render :show
  # end
end
