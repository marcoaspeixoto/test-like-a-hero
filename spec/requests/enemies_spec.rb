require 'rails_helper'
require 'spec/factories/enemies'

RSpec.describe "Enemies", type: :request do
  describe "GET /enemies" do
    context "when the enemy exists" do
      it "returns status code 200"
      it "updates the record"
      it "returns the enemy updated"
    end

    context "when the enemy does not exist" do
      it "returns status code 404"
      it "returns a not found message"
    end
  end
end
