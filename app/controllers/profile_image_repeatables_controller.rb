class ProfileImageRepeatablesController < ApplicationController
  before_action :set_profile_image_repeatable, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @profile_image_repeatables = ProfileImageRepeatable.all
    respond_with(@profile_image_repeatables)
  end

  def show
    respond_with(@profile_image_repeatable)
  end

  def new
    @profile_image_repeatable = ProfileImageRepeatable.new
    respond_with(@profile_image_repeatable)
  end

  def edit
  end

  def create
    @profile_image_repeatable = ProfileImageRepeatable.new(profile_image_repeatable_params)
    @profile_image_repeatable.save
    respond_with(@profile_image_repeatable)
  end

  def update
    @profile_image_repeatable.update(profile_image_repeatable_params)
    respond_with(@profile_image_repeatable)
  end

  def destroy
    @profile_image_repeatable.destroy
    respond_with(@profile_image_repeatable)
  end

  private
    def set_profile_image_repeatable
      @profile_image_repeatable = ProfileImageRepeatable.find(params[:id])
    end

    def profile_image_repeatable_params
      params[:profile_image_repeatable]
    end
end
