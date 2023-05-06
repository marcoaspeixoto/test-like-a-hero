class WeaponsController < ApplicationController
  def index
    @weapons = Weapon.all
  end

  def create
    @weapon = Weapon.create(user_params)
    redirect_to weapons_path
  end

  def delete
  end

  def show
  end
end
