require 'rails_helper'

RSpec.describe Special, type: :model do

  describe 'relationships' do
    it { should belong_to :comedian }
  end

  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :length }
  end

  describe 'class methods' do
    before :each do
      @comedian_1 = create(:comedian)
      @comedian_2 = create(:comedian, age: 30, city: "Seattle")
      @comedian_3 = create(:comedian, age: 35, city: "San Diego")
      @special_1 = create(:special, comedian_id: @comedian_1.id)
      @special_2 = create(:special, comedian_id: @comedian_1.id, length: 55)
      @special_3 = create(:special, comedian_id: @comedian_2.id, length: 65)
      @special_4 = create(:special, comedian_id: @comedian_2.id, length: 65)
      @special_5 = create(:special, comedian_id: @comedian_3.id, length: 60)
    end

    it ".avg_run_length" do
      expect(Special.avg_run_length).to eq(60)
    end

    it ".special_length_by_age" do
      expect(Special.special_length_by_age(30)).to eq(65)
    end

    it ".special_count" do
      expect(Special.special_count(@comedian_2)).to eq(2)
      expect(Special.special_count(@comedian_3)).to eq(1)
    end

    it '.total_special_count' do
      expect(Special.total_special_count).to eq(5)
      expect(Special.total_special_count(30)).to eq(2)
    end

  end

  # describe 'instance methods' do
  #   before :each do
  #     @comedian_1 = create(:comedian)
  #     @comedian_2 = create(:comedian, age: 30, city: "Seattle")
  #     @comedian_3 = create(:comedian, age: 35, city: "San Diego")
  #     @special_1 = create(:special, comedian_id: @comedian_1.id)
  #     @special_2 = create(:special, comedian_id: @comedian_1.id, length: 55)
  #     @special_3 = create(:special, comedian_id: @comedian_2.id, length: 65)
  #     @special_4 = create(:special, comedian_id: @comedian_2.id, length: 65)
  #     @special_5 = create(:special, comedian_id: @comedian_3.id, length: 60)
  #   end

    # it "count_of_specials" do
    #   expect(@special_2.count_of_specials(@comedian_2)).to eq(2)
    # end
  # end
end
