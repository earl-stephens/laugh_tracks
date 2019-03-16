require 'rails_helper'

describe "welcome page" do
  it "shows welcome page info" do
    visit root_path

    expect(page).to have_content("Welcome to Laugh Tracks!")
    expect(page).to have_link("Enter Site")
  end
end
