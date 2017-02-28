require 'rails_helper'

describe Message do
  it "doesnt save message if twilio gives and error, it wont let it!" do
    message = Message.new(body: "Highly inappropriate", to: '111', from: '111')
    expect(message.save).to eq false
  end

  it 'save the message' do
    message = Message.new(body: "Highly inappropriate", to: '6789710409', from: '5005550006')
    expect(message.save).to eq true
  end
end
