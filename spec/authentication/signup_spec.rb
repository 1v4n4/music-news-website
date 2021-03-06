require 'rails_helper'

describe 'User signs up', type: :system do
  let(:name) { 'johndoe' }

  it "doesn't sign up user if name already exists" do
    visit new_user_path
    @user = User.create(name: 'johndoe')

    fill_in 'Name', with: @user.name
    click_button 'Sign up'
    expect(page).to have_text 'Name has already been taken'
  end

  it "doesn't sign up user with invalid name" do
    visit new_user_path
    fill_in 'Name', with: 'No'

    click_button 'Sign up'

    expect(page).to have_text 'Name is too short (minimum is 3 characters)'
  end

  it "doesn't sign up user if name  is empty" do
    visit new_user_path
    fill_in 'Name', with: ''

    click_button 'Sign up'

    expect(page).to have_text "Name can't be blank"
  end
end
