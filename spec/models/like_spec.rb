require 'rails_helper'

RSpec.describe Like, type: :model do
  context "associations" do
    it { should belong_to(:user) }
    it { should belong_to(:tweet) }
  end

  FactoryBot.create(:like)

  context 'validations' do
    it { should validate_uniqueness_of(:user_id).scoped_to(:tweet_id) }
  end

  context 'Scopes and Methods' do
    it 'Check the tweets that have i like from an user' do
      user_test = User.find(rand(1..40))
      tweet1 = Like.liked_tweets_by_user(user_test.id)
      result = Like.liked_tweets_by_user(user_test.id)
      expect(result).not_to include(tweet1)
    end
  end
end
