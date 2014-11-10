require 'rails_helper'

feature 'Homepage' do

  scenario 'User visits the homepage' do
    visit root_path
    expect(page).to have_content("Practice Validations")
  end

  scenario 'User does not input all fields' do
    visit people_path
    click_on "New Person"
    click_on "Create Person"
    expect(page).to have_content("First name can't be blank")
  end

end
