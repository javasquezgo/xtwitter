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

=begin
  tweet_test = FactoryBot.create(:tweet)

  describe 'Check' do
    it 'Checking if a tweet is uploaded' do
      expect(tweet_test.content).not_to be(true)   
    end
  end

  describe 'Validation' do
    it 'Lenght of tweet must be greater than 1' do
      expect(tweet_test.content.length).to be > 1  
    end
  end

  describe 'Validation' do
    it 'User_id can not be blank or nil' do
      expect(tweet_test.user_id.to_s).not_to be_empty
      expect(tweet_test.user_id).not_to be_nil
    end
  end
=end
end
