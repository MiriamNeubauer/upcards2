class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :mobile
  # attr_accessible :title, :body

  has_many :bizcards
  has_many :comments

  def send_text()
    # Twilio setup:
    # put your own credentials here
    account_sid = 'ACa1998737aad660b8c9647e36d51dd83d'
    auth_token = 'ea431ef97401cbd21c3c33d39758c79a'

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token
    #Twilio send an MMS:
    account = client.account
    message = account.sms.messages.create({
      :from => '+12892070172',
      :to => self.mobile,
      :body => "Thanks @email, we will upload your bizcard to your account."})
    puts message
  end
end

    # @client.account.messages.create(
    # :from => ,
    # :to => '+15103755091',
    # :body => 'Hey there!',
    # :media_url => 'http://www.brookstone.com/webassets/product_images/700x700/814604.jpg',
    # )
