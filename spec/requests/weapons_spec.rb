require 'rails_helper'
require 'spec/factories/weapons'

RSpec.describe "Weapons", type: :request do
  describe "GET /weapons" do
    it "returns success status" do
      get weapons_path
      expect(response).to have_http_status(200)
    end

    it "the name of the weapon is present" do
      weapons = create_list(:weapon, 3)
      get weapons_path
      weapons.each do |weapon|
        expect(response.body).to include(weapon.name)
      end
    end
  end

  describe "POST /users" do
    context "when it has valid parameters" do
      it "creates the user with correct attributes" do
        user_attributes = FactoryBot.attributes_for(:user)
        post users_path, params: { user: user_attributes}
        expect(User.last).to have_attributes(user_attributes)
      end

    end

    context "when it has no valid parameters" do
      it "does not create user" do
        expect{
          post users_path, params: { user: {kind: '', name: '', level: ''}}
        }.to_not change(User, :count)
      end
    end
  end
end
