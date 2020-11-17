require 'rails_helper'

feature 'User registers for new account' do
  scenario 'A visitor is on the homepage and can see the registration button' do
    visit root_path

    expect(page).to have_css 'a', text: 'Register'
  end

  scenario 'A visit clicks on the Register button and it directs them to the registration page' do
    visit root_path
    click_on 'Register'

    expect(page).to have_css 'h2', text: 'Sign up'
  end

  scenario 'new registration page has all correct fields' do
    visit root_path
    click_on 'Register'

    expect(page).to have_css '#user_email'
    expect(page).to have_css '#user_firstname'
    expect(page).to have_css '#user_last_name'
    expect(page).to have_css '#user_last_name'
    expect(page).to have_css '#user_last_name'
  end
end
