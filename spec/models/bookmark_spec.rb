require 'rails_helper'

RSpec.describe Bookmark, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:tweet) }
  end

  context 'validations' do
    it { should validate_uniqueness_of(:user_id).scoped_to(:tweet_id) }
  end
end
