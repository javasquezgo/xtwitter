require 'rails_helper'

RSpec.describe Follower, type: :model do
  describe 'associations' do
    it { should belong_to(:user) } 
  end

  follow = FactoryBot.create(:follower)

  context 'validations' do
    it { should validate_uniqueness_of(:user_id).scoped_to(:follower) }
  end
end
