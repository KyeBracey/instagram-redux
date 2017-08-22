require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe 'GET /' do
    it 'responds with 200' do
      get :index
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /' do
    it 'redirects to posts index' do
      post :create, params: { post: { title: 'test post title', message: 'test post message' } }
      expect(response).to redirect_to(posts_path)
    end

    it 'creates a new post' do
      post :create, params: { post: { title: 'test post title', message: 'test post message' } }
      expect(Post.find_by(message: 'test post message')).to be
    end
  end

  describe 'GET /new' do
    it 'responds with 200' do
      get :new
      expect(response).to have_http_status(200)
    end
  end
end
