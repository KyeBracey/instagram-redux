require 'rails_helper'

RSpec.describe Post, type: :model do
  it { is_expected.to be }
  it { is_expected.to have_many :comments }

  it 'can be created without a message' do
    post = Post.create(title: 'Test post')
    expect(post).to be_valid
  end

  it 'cannot be created without a title' do
    post = Post.create(message: 'I am doomed to fail')
    expect(post).not_to be_valid
  end
end
