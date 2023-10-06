require 'rails_helper'

RSpec.describe Bookmark, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:tweet) }
  end

  context 'validations' do
    it 'validates uniqueness of user_id within the scope of tweet_id' do
      bookmark = FactoryBot.create(:bookmark)
      expect(bookmark).to be_valid
    end
  end

  context 'Scopes Methods' do
    it 'Check how many bookmarks a user has' do
      result = Bookmark.count_of_bookmarks(1)
      expect(result).to eq(0)  
    end
  end


end
