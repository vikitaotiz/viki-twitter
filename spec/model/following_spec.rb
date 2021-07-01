require 'rails_helper'

RSpec.describe Following, type: :model do
  describe 'associations' do
    it { should belong_to(:follower).class_name('User') }
    it { should belong_to(:followed).class_name('User') }

    describe 'validations' do
      it { should validate_presence_of(:followed_id) }
      it { should validate_length_of(:follower_id) }
    end

    it 'returns true if two given users are followers' do
      user1 = User.create(email: 'user1@email.com', password: 'secret123', username: 'User1')
      user2 = User.create(email: 'user2@email.com', password: 'secret123', username: 'User2')
      followed = Following.create(follower_id: user1.id, followed_id: user2.id)
      follower = Following.create(followed_id: user1.id, follower_id: user2.id)
      expect(followed == follower).to be false
    end
  end
end
