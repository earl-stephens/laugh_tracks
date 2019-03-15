require 'rails_helper'

describe "comedian index page" do
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
# save_and_open_page
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

  it "shows a count of a comedian's specials" do
    visit root_path

    within ".comedian#{@comedian_2.id}"do
      expect(page).to have_content("Number of specials: 2")
    end

    within ".comedian#{@comedian_3.id}"do
      expect(page).to have_content("Number of specials: 1")
    end
  end

  it "shows a statistics area" do
    visit root_path

    within ".statistics" do
      expect(page).to have_content("Average age: 34")
      expect(page).to have_content("Average special run length: 60")
      expect(page).to have_content("Cities:")
      expect(page).to have_content("Portland")
      expect(page).to have_content("San Diego")
      expect(page).to have_content("Seattle")
      expect(page).to have_content("Total number of specials: 5")
    end
  end

  it "shows a link to new comedians page" do
    visit root_path

    within ".new_link" do
      expect(page).to have_link("Add new comedian")
    end
  end

  describe "when user visits /comedians?age=34" do
    it "lists comedians who match that age" do
      visit '/comedians?age=34'
# save_and_open_page
      expect(page).to have_content(@comedian_2.name)
      expect(page).to have_content(@comedian_2.age)
      expect(page).to have_content(@comedian_2.city)
      expect(page).to_not have_content(@comedian_1.name)
    end
  end

end
