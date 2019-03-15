require 'rails_helper'

describe "new comedian page" do
  before :each do
    @comedian_1 = create(:comedian)
    @comedian_2 = create(:comedian, age: 34, city: "Seattle")
    @comedian_3 = create(:comedian, age: 43, city: "San Diego")
    @special_1 = create(:special, comedian_id: @comedian_1.id)
    @special_2 = create(:special, comedian_id: @comedian_1.id, length: 55)
    @special_3 = create(:special, comedian_id: @comedian_2.id, length: 65)
    @special_4 = create(:special, comedian_id: @comedian_2.id, length: 65)
    @special_5 = create(:special, comedian_id: @comedian_3.id, length: 60)
  end

  describe 'can enter data for new comedian' do
    it 'links to the new form from the index page' do
      visit root_path

      click_link "Add new comedian"

      expect(current_path).to eq(new_comedian_path)
    end

    it 'submits a new comedian and shows it on index page' do
      visit new_comedian_path

      within ".new_form" do
        fill_in "Name", with: "Three Stooges"
        fill_in "Age", with: 105
        fill_in "City", with: "Hollywood"
      end

      click_on "Add new comedian"

      expect(page).to have_content("Three Stooges")
    end
  end


end
