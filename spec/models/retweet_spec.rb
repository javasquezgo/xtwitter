require 'rails_helper'

RSpec.describe Retweet, type: :model do

  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:tweet) } 
  end

  context 'Validations' do
    it { should validate_presence_of(:reply_text) }
  end

  context 'Scopes and Methods' do
    it 'description' do
      user_test = FactoryBot.create(:user)
      tweet_test = FactoryBot.create(:tweet, user_id: user_test.id)

      result = Retweet.existed_retweet(user_test.id, tweet_test.id, 'Test')
      expect(result).to be true  
    end
  end

end
