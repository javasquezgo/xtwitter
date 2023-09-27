require 'rails_helper'

RSpec.describe Bookmark, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:tweet) }
  end

  context 'validations' do
    it 'validates uniqueness of user_id within the scope of tweet_id' do
      bookmark = FactoryBot.build(:bookmark)
      expect(bookmark).to be_valid
    end
  end


end
