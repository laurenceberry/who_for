class ProfilesController < ApplicationController

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
  end

private
  def profile_params
    params.require(:profile).permit(:name, :generate_name, :description, :living_situation, :interests, :quote, :ability, :aptitude, :attitude, :bigger_picture, :age, :occupation, :considerations, scalers_attributes: [:id, :name, :profile_id, :scale, :out_of] )
  end
end
