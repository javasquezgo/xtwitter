require 'rails_helper'

RSpec.describe Retweet, type: :model do

  retweet_test = FactoryBot.create(:retweet)
  
  describe 'validation' do
    it 'Send data to db' do
      expect(retweet_test.save).to be true
    end
  end

end
