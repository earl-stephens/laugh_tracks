require 'rails_helper'

describe "comedian index page" do
  before :each do
    @comedian_1 = create(:comedian)
    @comedian_2 = create(:comedian)
    @comedian_3 = create(:comedian)
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
end
