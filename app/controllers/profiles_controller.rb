class ProfilesController < ApplicationController

  def new
    @pack = Pack.find(params[:pack_id])
    @profile = Profile.new
  end

  def create
    @pack = Pack.find(params[:pack_id])
    @profile = @pack.profiles.create(profile_params)
    redirect_to pack_path(@pack)
  end

  def edit
    @pack = Pack.find(params[:pack_id])
    @profile = Profile.find(params[:id])
  end

  def update
    @pack = Pack.find(params[:pack_id])
    @profile = Profile.find(params[:id])

    if @profile.update(profile_params)
      redirect_to pack_path(@pack)
    else
      render 'edit'
    end
  end

  def destroy
    @pack = Pack.find(params[:pack_id])
    @profile = @pack.profiles.find(params[:id])
    @profile.destroy

    redirect_to pack_path(@pack)
  end

  def index
    @profiles = Profile.all
  end

  def show
    @pack = Pack.find(params[:pack_id])
    @profile = @pack.profiles.find(params[:id])
  end

private
  def profile_params
    params.require(:profile).permit(:image, :name, :generate_name, :description, :characteristics, :oppertunities, :cautions, :background, :motivation, :living_situation, :quote, :age, :occupation, scalers_attributes: [:id, :name, :profile_id, :scale, :out_of], quotes_attributes: [:id, :quote, :profile_id] )
  end
end
