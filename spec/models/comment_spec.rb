require 'rails_helper'

RSpec.describe Comment, type: :model do
  it { is_expected.to be }
  it { is_expected.to belong_to :post }

  it 'cannot be created without any text' do
    post = Post.create(title: 'test post title', message: 'test post message')
    comment = post.comments.build(text: '')
    expect(comment).not_to be_valid
  end
end
