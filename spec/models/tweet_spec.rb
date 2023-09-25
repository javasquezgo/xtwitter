require 'rails_helper'

RSpec.describe Tweet, type: :model do
  tweet_test = FactoryBot.create(:tweet)

  describe 'validation' do
    it 'Checking if upload a tweet' do
      expect(tweet_test.user_id).to be > 0
    end
  end
end
