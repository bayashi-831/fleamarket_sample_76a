require 'rails_helper'

describe Item do
  
  
  describe '#create' do

    before do
      item = build(:item)
      item.images = fixture_file_upload("/files/test_image.jpg")
    end

    it "is invalid without a name" do
      item = build(:item, name: nil)
      item.valid?
      expect(item.errors[:name]).to include("を入力してください")
    end

    it "is invalid without a introduction" do
      item = build(:item, introduction: nil)
      item.valid?
      expect(item.errors[:introduction]).to include("を入力してください")
    end

    it "is invalid without a genre_id" do
      item = build(:item, genre_id: nil)
      item.valid?
      expect(item.errors[:genre_id]).to include("を入力してください")
    end

    it "is invalid without a condition_id" do
      item = build(:item, condition_id: nil)
      item.valid?
      expect(item.errors[:condition_id]).to include("を入力してください")
    end

    it "is invalid without a delivery_fee_id" do
      item = build(:item, delivery_fee_id: nil)
      item.valid?
      expect(item.errors[:delivery_fee_id]).to include("を入力してください")
    end

    it "is invalid without a pref_id" do
      item = build(:item, pref_id: nil)
      item.valid?
      expect(item.errors[:pref_id]).to include("を入力してください")
    end

    it "is invalid without a day_id" do
      item = build(:item, day_id: nil)
      item.valid?
      expect(item.errors[:day_id]).to include("を入力してください")
    end

    it "is invalid without a price" do
      item = build(:item, price: nil)
      item.valid?
      expect(item.errors[:price]).to include("を入力してください")
    end

    it "is invalid without a seller_id" do
      item = build(:item, seller_id: nil)
      item.valid?
      expect(item.errors[:seller_id]).to include("を入力してください")
    end

  end
end