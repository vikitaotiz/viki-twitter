require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should have_many(:tweets) }
    it { should have_many(:comments) }
    it { should have_many(:likes) }
    it { should have_many(:following) }
    it { should have_many(:active_relationships).class_name('Following') }
    it { should have_many(:passive_relationships).class_name('Following') }

    it 'returns true if user was created correctly' do
      user = User.create(email: 'user1@gmail.com', password: 'password', username: 'User')
      expect(user).to be_truthy
    end

    it 'returns nil if user was created incorrectly' do
      user = User.create(email: 'user1gmail.com', password: 'password', username: 'User')
      expect(user.id).to be_falsey
    end
  end

  describe 'validations' do
    it { should validate_presence_of(:username) }
    it { should validate_length_of(:username) }
  end
end
