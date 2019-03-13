require 'rails_helper'

RSpec.describe Comedian, type: :model do

  describe "relationships" do
    it { should have_many :specials }
  end

  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :city }
  end

  describe 'class methods' do
    before :each do
      @comedian_1 = create(:comedian)
      @comedian_2 = create(:comedian, age: 30, city: "Seattle")
      @comedian_3 = create(:comedian, age: 35, city: "Seattle")
      @special_1 = create(:special, comedian_id: @comedian_1.id)
      @special_2 = create(:special, comedian_id: @comedian_1.id, length: 55)
      @special_3 = create(:special, comedian_id: @comedian_2.id, length: 65)
      @special_4 = create(:special, comedian_id: @comedian_2.id, length: 65)
      @special_5 = create(:special, comedian_id: @comedian_3.id, length: 60)
    end

    it ".avg_age" do
      expect(Comedian.avg_age).to eq(30)
    end

    it ".unique_cities" do
      expect(Comedian.unique_cities).to eq(["Portland", "Seattle"])
    end
  end

end
