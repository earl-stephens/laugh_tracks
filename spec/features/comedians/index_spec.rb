require 'rails_helper'

describe "comedian index page" do
  before :each do
    @comedian_1 = create(:comedian)
    @comedian_2 = create(:comedian)
    @comedian_3 = create(:comedian)
    @special_1 = create(:special, comedian_id: @comedian_1.id)
    @special_2 = create(:special, comedian_id: @comedian_1.id)
    @special_3 = create(:special, comedian_id: @comedian_2.id)
    @special_4 = create(:special, comedian_id: @comedian_2.id)
    @special_5 = create(:special, comedian_id: @comedian_3.id)
  end

  it "shows list of comedians" do
    visit root_path

    within ".comedian#{@comedian_1.id}"do
      expect(page).to have_content(@comedian_1.name)
      expect(page).to have_content(@comedian_1.age)
      expect(page).to have_content(@comedian_1.city)
      expect(page).to_not have_content(@comedian_2.name)
    end

    within ".comedian#{@comedian_2.id}"do
      expect(page).to have_content(@comedian_2.name)
      expect(page).to have_content(@comedian_2.age)
      expect(page).to have_content(@comedian_2.city)
      expect(page).to_not have_content(@comedian_1.name)
    end
  end

  it "shows list of comedian specials" do
    visit root_path
save_and_open_page
    within ".comedian#{@comedian_1.id}"do
    # binding.pry
      expect(page).to have_content(@comedian_1.name)
      expect(page).to have_content(@comedian_1.age)
      expect(page).to have_content(@comedian_1.city)
      expect(page).to_not have_content(@comedian_2.name)
      expect(page).to have_content(@special_1.title)
      expect(page).to have_content(@special_1.length)
      expect(page).to have_css("img[src*='#{@special_1.image}']")
    end

    within ".comedian#{@comedian_1.id}"do
      expect(page).to have_content(@special_2.title)
      expect(page).to_not have_content(@special_3.title)
      expect(page).to have_content(@special_2.length)
    end

    within ".comedian#{@comedian_2.id}"do
      expect(page).to have_content(@special_3.title)
      expect(page).to have_content(@special_3.length)
    end

    within ".comedian#{@comedian_2.id}"do
      expect(page).to have_content(@special_4.title)
      expect(page).to have_content(@special_4.length)
    end
  end
end
