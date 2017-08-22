require 'rails_helper'

RSpec.feature 'posts', type: :feature do
  scenario 'posts can be created' do
    visit posts_path
    click_link('New post')
    fill_in('Title', with: 'Test post title')
    fill_in('Message', with: 'Test post message')
    click_button('Create post')
    expect(page).to have_content('Test post title')
    expect(page).to have_content('Test post message')
  end
end
