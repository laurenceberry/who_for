class ProfileBasicRepeatablesController < ApplicationController
  before_action :set_profile_basic_repeatable, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @profile_basic_repeatables = ProfileBasicRepeatable.all
    respond_with(@profile_basic_repeatables)
  end

  def show
    respond_with(@profile_basic_repeatable)
  end

  def new
    @profile_basic_repeatable = ProfileBasicRepeatable.new
    respond_with(@profile_basic_repeatable)
  end

  def edit
  end

  def create
    @profile_basic_repeatable = ProfileBasicRepeatable.new(profile_basic_repeatable_params)
    @profile_basic_repeatable.save
    respond_with(@profile_basic_repeatable)
  end

  def update
    @profile_basic_repeatable.update(profile_basic_repeatable_params)
    respond_with(@profile_basic_repeatable)
  end

  def destroy
    @profile_basic_repeatable.destroy
    respond_with(@profile_basic_repeatable)
  end

  private
    def set_profile_basic_repeatable
      @profile_basic_repeatable = ProfileBasicRepeatable.find(params[:id])
    end

    def profile_basic_repeatable_params
      params.require(:profile_basic_repeatable).permit(:name, :content, :profile_id)
    end
end
