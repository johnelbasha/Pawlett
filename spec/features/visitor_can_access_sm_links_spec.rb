require 'rails_helper'

feature 'visitor can access external social media accounts using the icons on the homepage' do
  scenario 'sees working link to facebook account' do #note: does not click on it
    visit root_path

    expect(page).to have_selector(:css, 'a[href="https://www.facebook.com/PawlettPlumbing/?fref=ts&pnref=story"]')
  end

  scenario 'sees working link to instagram account' do #note: does not click on it
    visit root_path

    expect(page).to have_selector(:css, 'a[href="https://www.instagram.com/pawlettplumbing/"]')
  end

  scenario 'sees working link to twitter account' do #note: does not click on it
    visit root_path

    expect(page).to have_selector(:css, 'a[href="https://twitter.com/PawlettPlumbing"]')
  end

  # it would be really good if I could learn how in the above tests, the user actually clicks on the links, it takes them to the external site on a new tab and checks for some specific text, but this is too advanced for me right now.

end
