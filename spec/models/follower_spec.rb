require 'rails_helper'

RSpec.describe Follower, type: :model do
  describe 'associations' do
    it { should belong_to(:user) } 
  end

  follow = FactoryBot.create(:follower)

  context 'validations' do
    it { should validate_uniqueness_of(:following).scoped_to(:user_id).case_insensitive }
    it { should validate_uniqueness_of(:followers).scoped_to(:user_id).case_insensitive }
  end
end
