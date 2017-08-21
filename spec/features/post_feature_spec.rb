require 'rails_helper'

RSpec.feature 'posts', type: :feature do
  scenario 'posts can be created' do
    pending('Waiting for controller actions to be written before implementing views')
    visit posts_path
    click_button('New post')
    fill_in('Title', with: 'Test post title')
    fill_in('Message', with: 'Test post message')
    click_button('Submit')
    expect(page).to have_content('Test post title')
    expect(page).to have_content('Test post message')
  end
end
