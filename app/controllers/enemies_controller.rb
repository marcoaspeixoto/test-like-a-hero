class EnemiesController < ApplicationController
  before_action :set_enemy

  def update
  end

  def destroy
  end

  private

  def enemy_params
    params.permit(:name, :power_base, :power_step, :level, :kind)
  end

  def set_enemy
    @enemy = Enemy.find(params[:id])
  rescue ActiveRecord::RecordNotFound => e
    render json: { message: e.message }, status: :not_found
  end
end
