require 'rails_helper'

RSpec.describe Follower, type: :model do
  describe 'associations' do
    it { should belong_to(:user) } 
  end

  follow = FactoryBot.create(:follower)
end
