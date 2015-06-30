class Sms
  def send(message)
    message = MainsmsApi::Message.new(sender: 'ZnaiGorod', message: message, recipients: [Settings['sms_recipient']])
    message.deliver
  end
end
