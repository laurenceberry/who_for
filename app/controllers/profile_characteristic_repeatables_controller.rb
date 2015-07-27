class ProfileCharacteristicRepeatablesController < ApplicationController
  before_action :set_profile_characteristic_repeatable, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @profile_characteristic_repeatables = ProfileCharacteristicRepeatable.all
    respond_with(@profile_characteristic_repeatables)
  end

  def show
    respond_with(@profile_characteristic_repeatable)
  end

  def new
    @profile_characteristic_repeatable = ProfileCharacteristicRepeatable.new
    respond_with(@profile_characteristic_repeatable)
  end

  def edit
  end

  def create
    @profile_characteristic_repeatable = ProfileCharacteristicRepeatable.new(profile_characteristic_repeatable_params)
    @profile_characteristic_repeatable.save
    respond_with(@profile_characteristic_repeatable)
  end

  def update
    @profile_characteristic_repeatable.update(profile_characteristic_repeatable_params)
    respond_with(@profile_characteristic_repeatable)
  end

  def destroy
    @profile_characteristic_repeatable.destroy
    respond_with(@profile_characteristic_repeatable)
  end

  private
    def set_profile_characteristic_repeatable
      @profile_characteristic_repeatable = ProfileCharacteristicRepeatable.find(params[:id])
    end

    def profile_characteristic_repeatable_params
      params.require(:profile_characteristic_repeatable).permit(:name, :content, :profile_id)
    end
end
