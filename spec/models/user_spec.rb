require 'rails_helper'

describe User do
  it "will have a username" do
    user = FactoryGirl.create(:user)
    expect(user.username).to eq 'template'
  end

  it "will have an email" do
    user = FactoryGirl.create(:user)
    expect(user.username).to eq 'template'
  end

  it "will have a password" do
    user = FactoryGirl.create(:user)
    expect(user.username).to eq 'template'
  end

  it "will check for validation of username" do
    user = User.new(email: 'temp@temp.com', password: 'template')
    expect(user.save).to eq false
  end

  it "will check for validation of username" do
    user = User.new(username: 'temp', email: 'temp@temp.com')
    expect(user.save).to eq false
  end

  it "will check for validation of username" do
    user = User.new(username: 'temp', password: 'template')
    expect(user.save).to eq false
  end
end
