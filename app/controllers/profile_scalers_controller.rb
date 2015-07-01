class ProfileScalersController < ApplicationController
  before_action :set_profile_scaler, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @profile_scalers = ProfileScaler.all
    respond_with(@profile_scalers)
  end

  def show
    respond_with(@profile_scaler)
  end

  def new
    @profile_scaler = ProfileScaler.new
    respond_with(@profile_scaler)
  end

  def edit
  end

  def create
    @profile_scaler = ProfileScaler.new(profile_scaler_params)
    @profile_scaler.save
    respond_with(@profile_scaler)
  end

  def update
    @profile_scaler.update(profile_scaler_params)
    respond_with(@profile_scaler)
  end

  def destroy
    @profile_scaler.destroy
    respond_with(@profile_scaler)
  end

  private
    def set_profile_scaler
      @profile_scaler = ProfileScaler.find(params[:id])
    end

    def profile_scaler_params
      params.require(:profile_scaler).permit(:name, :profile_id)
    end
end
