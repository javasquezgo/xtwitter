require 'rails_helper'

RSpec.describe Quote, type: :model do
  
  describe 'associations' do
    it { should belong_to(:user) } 
    it { should belong_to(:tweet) } 
  end

  context 'validations' do
    it { should validate_presence_of(:content) }
    it { should validate_length_of(:content)}
    it { should validate_presence_of(:user_id) }
  end
end
