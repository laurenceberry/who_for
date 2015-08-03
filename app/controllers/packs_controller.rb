class PacksController < ApplicationController

  def new
    @pack = Pack.new
  end

  def create
    @pack = Pack.new(pack_params)

    if @pack.save
      redirect_to pack_path(@pack)
    else
      render 'new'
    end
  end

  def edit
    @pack = Pack.find(params[:id])
  end

  def update
    @pack = Pack.find(params[:id])

    if @pack.update(pack_params)
      redirect_to packs_path
    else
      render 'edit'
    end
  end

  def destroy
    @pack = Pack.find(params[:id])
    @pack.destroy

    redirect_to packs_path
  end

  def index
    @packs = Pack.all
  end

  def show
    @pack = Pack.find(params[:id])
  end

private

  def pack_params
    params.require(:pack).permit(:name, :image)
  end
end
