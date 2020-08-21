require 'rails_helper'

describe Destination do
  describe '#create' do
    
    it "is invalid without a family_name" do
      destination = build(:destination, family_name: nil)
      destination.valid?
      expect(destination.errors[:family_name]).to include("can't be blank")
    end

    it "is invalid without a first_name" do
      destination = build(:destination, first_name: nil)
      destination.valid?
      expect(destination.errors[:first_name]).to include("can't be blank")
    end

    it "is invalid without a family_name_kana" do
      destination = build(:destination, family_name_kana: nil)
      destination.valid?
      expect(destination.errors[:family_name_kana]).to include("can't be blank")
    end

    it "is invalid without a first_name_kana" do
      destination = build(:destination, first_name_kana: nil)
      destination.valid?
      expect(destination.errors[:first_name_kana]).to include("can't be blank")
    end

    it "is invalid without a postal_code" do
      destination = build(:destination, postal_code: nil)
      destination.valid?
      expect(destination.errors[:postal_code]).to include("can't be blank")
    end

    it "is invalid without a prefecture_id" do
      destination = build(:destination, prefecture_id: nil)
      destination.valid?
      expect(destination.errors[:prefecture_id]).to include("can't be blank")
    end

    it "is invalid without a city" do
      destination = build(:destination, city: nil)
      destination.valid?
      expect(destination.errors[:city]).to include("can't be blank")
    end

    it "is invalid without a house_number" do
      destination = build(:destination, house_number: nil)
      destination.valid?
      expect(destination.errors[:house_number]).to include("can't be blank")
    end
  end
end