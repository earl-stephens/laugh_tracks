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

  end
end
