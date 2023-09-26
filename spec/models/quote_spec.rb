require 'rails_helper'

RSpec.describe Quote, type: :model do
  
  quote_test = FactoryBot.create(:quote)

  describe 'validation' do
    it 'Check if the content quote is valid' do
      expect(quote_test.content).to_not be_nil
      expect(quote_test.content).to be_empty
    end
  end

  escribe 'Validation' do
    it 'User_id can not be blank or nil' do
      #be_empty solo trabaja con cadenas por eso lo convertimos
      expect(retweet_test.user_id.to_s).not_to be_empty
      expect(retweet_test.user_id).not_to be_nil
    end
  end

  describe 'Validation' do
    it 'Tweet_id can not be blank or nil' do
      #be_empty solo trabaja con cadenas por eso lo convertimos
      expect(retweet_test.tweet_id.to_s).not_to be_empty
      expect(retweet_test.tweet_id).not_to be_nil
    end
  end

end
