require 'rails_helper'

RSpec.feature "Creating a Person" do

  before do
    visit new_person_path
  end

  scenario "A new Person can be created" do

    fill_in "Name", with: "Test Name"

    click_button "Add Person"

    expect(page).to have_content("This person has been added")
  end

  scenario "The Name can not be blank" do

    click_button "Add Person"

    expect(page).to have_content("The person was not added")
    expect(page).to have_content("Name can't be blank")
  end
end