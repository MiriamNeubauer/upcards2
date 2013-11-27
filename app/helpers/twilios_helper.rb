module TwiliosHelper

  def parse_message(phone, image)
  # phone = params[:From]
  # message = params[:Body]

    #store users phone number so that self.phone works
    current_user.update_attributes(mobile: phone)

    # stored picture as avatar of the bizcard
    businesscard = Bizcard.new(avatar: image)
    current_user.bizcards << businesscard

    #send out confirmaton:
    current_user.send_text()
  end

end
