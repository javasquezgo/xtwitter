require 'rails_helper'

RSpec.describe Quote, type: :model do
  
  describe 'associations' do
    it { should belong_to(:user) } 
    it { should belong_to(:tweet) } 
  end

  context 'validations' do
    it { should validate_presence_of(:content) }
    it { should validate_length_of(:content)}
    it { should validate_presence_of(:user_id) }
  end

  context 'Scopes and Methods' do

    it 'Check we can create a quote' do
      user_test = FactoryBot.create(:user)
      tweet_test = FactoryBot.create(:tweet, user_id: user_test.id)

      quote_test = FactoryBot.create(:quote)
      
      user_quote = Quote.quote_tweet(user_test.id, tweet_test.id, quote_test.content  )
    
      expect(user_quote).to be true
    end
  end
end
