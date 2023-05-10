require 'rails_helper'
require 'spec/factories/weapons'

RSpec.describe Weapon, type: :model do
  it 'creat a random weapon' do
    weapon = build(:weapon)
    expect(weapon).to be_valid
  end

  it 'verification of title' do
    weapon = build(:weapon)
    expect(weapon.title).to eq("#{weapon.name} ##{weapon.level}")
  end

  it 'verification of power of weapon with current power' do
    weapon = build(:weapon)
    expect(weapon.current_power)
  end
end
