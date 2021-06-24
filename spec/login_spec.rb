require 'rails_helper'

describe 'User signs in', type: :system do
    before do
      @user = User.create(name: 'John Doe')
    end
  
    it 'signs in @user with correct name' do
      visit login_path
      fill_in 'Name', with: @user.name
      click_on 'Log in'
      expect(page).not_to have_text 'Logged in!'
      expect(page).not_to have_current_path root_path
    end
  
    it "doesn's sign in user with unregistered account" do
      visit login_path
      fill_in 'Name', with: 'notRegistered'
      click_button 'Log In'
  
      expect(page).to have_no_text 'Logged in!'
      expect(page).to have_text 'Name is not valid'
    end  
    
end