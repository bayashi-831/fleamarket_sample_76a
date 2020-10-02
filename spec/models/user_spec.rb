# require 'rails_helper'

# describe User do
#   describe '#create' do

#     it "is valid with a nickname, email, password, password_confirmation, family_name, first_name, family_name_kana, first_name_kana" do
#       user = build(:user)
#       expect(user).to be_valid
#     end

#     it "is invalid without a nickname" do
#       user = build(:user, nickname: nil)
#       user.valid?
#       expect(user.errors[:nickname]).to include("を入力してください")
#     end

#     it "is invalid without a email" do
#       user = build(:user, email: nil)
#       user.valid?
#       expect(user.errors[:email]).to include("を入力してください", "は不正な値です")
#     end

#     it "is invalid without a password" do
#       user = build(:user, password: nil)
#       user.valid?
#       expect(user.errors[:password]).to include("を入力してください", "は7文字以上で入力してください")
#     end

#     it "is invalid without a password_confirmation" do
#       user = build(:user, password_confirmation: "")
#       user.valid?
#       expect(user.errors[:password_confirmation]).to include("とパスワードの入力が一致しません")
#     end

#     it "is valid with a password that has more than 7 characters " do
#       user = build(:user, password: "aaaaaa123", password_confirmation: "aaaaaa123")
#       expect(user).to be_valid
#     end

#     it "is invalid with a password that has less than 6 characters " do
#       user = build(:user, password: "aaaaaa", password_confirmation: "aaaaaa")
#       user.valid?
#       expect(user.errors[:password]).to include("は7文字以上で入力してください")
#     end

#     it "is invalid with a duplicate email address" do
#       user = create(:user)
#       another_user = build(:user, email: user.email)
#       another_user.valid?
#       expect(another_user.errors[:email]).to include("はすでに存在します")
#     end

#     it "is invalid without a family_name" do
#       user = build(:user, family_name: nil)
#       user.valid?
#       expect(user.errors[:family_name]).to include("を入力してください", "は不正な値です")
#     end

#     it "is invalid without a first_name" do
#       user = build(:user, first_name: nil)
#       user.valid?
#       expect(user.errors[:first_name]).to include("を入力してください", "は不正な値です")
#     end

#     it "is invalid without a family_name_kana" do
#       user = build(:user, family_name_kana: nil)
#       user.valid?
#       expect(user.errors[:family_name_kana]).to include("を入力してください", "は不正な値です")
#     end

#     it "is invalid without a first_name_kana" do
#       user = build(:user, first_name_kana: nil)
#       user.valid?
#       expect(user.errors[:first_name_kana]).to include("を入力してください", "は不正な値です")
#     end

#     it "is invalid without a birthday" do
#       user = build(:user, birthday: nil)
#       user.valid?
#       expect(user.errors[:birthday]).to include("を入力してください")
#     end

#     it "is invalid without a destination_family_name" do
#       destination = build(:user, destination_family_name: nil)
#       destination.valid?
#       expect(destination.errors[:destination_family_name]).to include("を入力してください", "は不正な値です")
#     end

#     it "is invalid without a destination_first_name" do
#       destination = build(:user, destination_first_name: nil)
#       destination.valid?
#       expect(destination.errors[:destination_first_name]).to include("を入力してください", "は不正な値です")
#     end

#     it "is invalid without a destination_family_name_kana" do
#       destination = build(:user, destination_family_name_kana: nil)
#       destination.valid?
#       expect(destination.errors[:destination_family_name_kana]).to include("を入力してください", "は不正な値です")
#     end

#     it "is invalid without a destination_first_name_kana" do
#       destination = build(:user, destination_first_name_kana: nil)
#       destination.valid?
#       expect(destination.errors[:destination_first_name_kana]).to include("を入力してください", "は不正な値です")
#     end

#     it "is invalid without a postal_code" do
#       destination = build(:user, postal_code: nil)
#       destination.valid?
#       expect(destination.errors[:postal_code]).to include("を入力してください")
#     end

#     it "is invalid without a prefecture_id" do
#       destination = build(:user, prefecture_id: nil)
#       destination.valid?
#       expect(destination.errors[:prefecture_id]).to include("を入力してください")
#     end

#     it "is invalid without a city" do
#       destination = build(:user, city: nil)
#       destination.valid?
#       expect(destination.errors[:city]).to include("を入力してください")
#     end

#     it "is invalid without a house_number" do
#       destination = build(:user, house_number: nil)
#       destination.valid?
#       expect(destination.errors[:house_number]).to include("を入力してください")
#     end
#   end
# end 