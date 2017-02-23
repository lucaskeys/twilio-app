require 'rails_helper'

describe User do
  it "will have a username" do
    user = FactoryGirl.create(:user)
    expect(user.name).to eq 'ryan'
  end

  it "will have an email" do
    user = FactoryGirl.create(:user)
    expect(user.email).to eq 'ryan@ryan.com'
  end

  it "will have a password" do
    user = FactoryGirl.create(:user)
    expect(user.password).to eq 'ryan23'
  end

  it "will check for validation of name" do
    user = User.new(email: 'ryan@ryan.com', password: 'ryan23')
    expect(user.save).to eq false
  end

  it "will check for validation of email" do
    user = User.new(name: 'ryan', email: 'ryan@ryan.com')
    expect(user.save).to eq false
  end

  it "will check for validation of password" do
    user = User.new(name: 'ryan', password: 'ryan23')
    expect(user.save).to eq false
  end
end
