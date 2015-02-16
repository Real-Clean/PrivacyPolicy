require 'feature_spec_helper'

feature 'User goes to root URL' do
  scenario 'they see the button for starting an application' do
    visit '/'

    expect(page).to have_button("Start your application")
  end
end

feature 'User leaves required fields empty' do
  pending
  scenario 'the error message is shown to the user to fill in those fields before continuing' do
    visit '/application/basic_info?'

      fill_in('name', with: '')
      fill_in('date_of_birth', with: '')
      click_on('Next Step')
  end
end


feature 'User goes through full application (up to review and submit)' do
  pending
  scenario 'it all works!' do
    visit '/application/basic_info?'
      fill_in 'name', with: 'Hot Snakes'
      fill_in 'date_of_birth', with: "01/01/2000"
      click_button 'Next Step'
      expect(page).to have_content('Contact information')
      fill_in 'home_phone_number', with: "5555555555"
      fill_in 'email', with: "hotsnakes@gmail.com"
      fill_in 'home_address', with: "2015 Market Street"
      fill_in 'home_zip_code', with: "94122"
      click_on('Next Step')
      expect(page).to have_content('Personal information')
  end
end
