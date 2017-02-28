module ApplicationHelper
end
# res = RestClient::Request.new(
#   :method => :post,
#   :url => "https://api.twilio.com/2010-04-01/Accounts/AC5449f44e1aaf9f28cbac820cc0a9505e/Messages.json",
#   :user => 'AC5449f44e1aaf9f28cbac820cc0a9505e',
#   :password => '9c8ff5c296571e95a14be85d1d64ae89',
#   :payload => { :Body => 'hello',
#                 :To => '6789710409',
#                 :From => '6789710409' }
#   ).execute
#
#
#   response = RestClient::Request.new(
#     :method => :post,
#     :url => 'https://api.twilio.com/2010-04-01/Accounts/AC8a51783e687b6cbfff184b330d97b851/Messages.json',
#     :user => 'AC8a51783e687b6cbfff184b330d97b851',
#     :password => '72308a2534c1dd6fb9c80dac5d359752',
#     :payload => { :Body => 'Hello world!',
#                   :To => '5033196233',
#                   :From => '9718835991' }
#   ).execute
#
#
#   response = RestClient.post(
#     'https://AC5449f44e1aaf9f28cbac820cc0a9505e:9c8ff5c296571e95a14be85d1d64ae89@api.twilio.com/2010-04-01/Accounts/AC5449f44e1aaf9f28cbac820cc0a9505e/Messages.json',
#     :Body => 'Hello world!',
#     :To => '6789710409',
#     :From => '6789710409'
#   )
