require 'rails_helper'

RSpec.describe Retweet, type: :model do

  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:tweet) } 
  end

  context 'Validations' do
    it { should validate_presence_of(:reply_text) }
  end

=begin
  retweet_test = FactoryBot.create(:retweet)
  
  describe 'validation' do
    it 'Send data to db' do
      expect(retweet_test.save).to be true
    end
  end

  describe 'Validation' do
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
=end
end
