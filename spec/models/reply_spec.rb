require 'rails_helper'

RSpec.describe Reply, type: :model do
  context 'Associations' do
    it { should belong_to(:user) }
    it { should belong_to(:tweet) } 
  end

  context 'Validations' do
    it { should validate_presence_of(:reply_text) }
    it { should validate_length_of(:reply_text) }
  end
end
