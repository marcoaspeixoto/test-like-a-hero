require 'rails_helper'
require 'spec/factories/enemies'

RSpec.describe "Enemies", type: :request do
  describe "GET /enemies" do
    context "when the enemy exists" do
      it "returns status code 200" do
        enemy = create(:enemy)
        enemy_attributes = attributes_for(:enemy)
        put "/enemies/#{enemy.id}", params: enemy_attributes
        expect(response).to have_http_status(200)
      end
      it "updates the record" do
        enemy = create(:enemy)
        enemy_attributes = attributes_for(:enemy)
        put "/enemies/#{enemy.id}", params: enemy_attributes
        expect(enemy.reload).to have_attributes(enemy_attributes)
      end
      it "returns the enemy updated" do
        enemy = create(:enemy)
        enemy_attributes = attributes_for(:enemy)
        put "/enemies/#{enemy.id}", params: enemy_attributes

        json_response = JSON.parse(response.body)
        expect(enemy.reload).to have_attributes(json_response.except('created_at', 'updated_at'))
      end
    end

    context "when the enemy does not exist" do
      it "returns status code 404" do
        put '/enemies/0', params: attributes_for(:enemy)
        expect(response).to have_http_status(404)
      end
      it "returns a not found message" do
        put '/enemies/0', params: attributes_for(:enemy)
        expect(response.body).to match(/Couldn't find Enemy/)
      end
    end
  end

  describe 'DELETE /enemies' do
    context 'when the enemy existis' do
      it 'returns status code 204' do
        enemy = create(:enemy)
        delete "/enemies/#{enemy.id}"
        expect(response).to have_http_status(204)
      end
      it 'destroy the record'
    end

    context 'when the enemy does not exist' do
      it 'returns status code 404'
      it 'returns a not found message'
    end
  end
end
