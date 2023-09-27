require 'rails_helper'

RSpec.describe Reply, type: :model do
  context 'Associations' do
    it { should belong_to(:user) }
    it { should belong_to(:tweet) } 
  end

  context 'Validations' do
    it { should validate_presence_of(:reply_text) }
    it { should validate_length_of(:reply_text) }
  end

  describe 'Scope and Methods' do
    it 'Check the replies of an user' do
      user_test = FactoryBot.create(:user)
      tweet_test = FactoryBot.create(:tweet, user_id: user_test.id)
      reply_test = FactoryBot.create(:reply, user_id: user_test.id, tweet_id: tweet_test.id)
      
      user_replies = Reply.user_personal_tweets(user_test.id)
    
      expect(user_replies).to include(reply_test)
      
    end
  end
end
