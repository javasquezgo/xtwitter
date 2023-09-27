require 'rails_helper'

RSpec.describe Tweet, type: :model do

  describe 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:likes) }
    it { should have_many(:retweets) }
    it { should have_many(:bookmarks) }
    it { should have_many(:quotes) }
    it { should have_and_belong_to_many(:hashtags)}
  end

  context 'Validations' do
    it { should validate_presence_of(:content) }
    it { should validate_length_of(:content) }
  end

  context 'Scopes and Methods' do
    it 'Check all the tweets of a specific user' do
      user1 = User.find(rand(1..25))
      tweet1 = FactoryBot.create(:tweet, user_id: user1.id)

      result = Tweet.user_personal_tweets(user1.id)
      expect(result.content).to include(tweet1.content)
    end
    
  end

end
