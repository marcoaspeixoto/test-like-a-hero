require 'rails_helper'

RSpec.describe Weapon, type: :model do
  it 'creat a random weapon' do
    weapon = build(:weapon)
    expect(weapon).to be_valid
  end

end
