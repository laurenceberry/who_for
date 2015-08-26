class PagesController < ApplicationController

  def index
    @user = current_user
    @packs = Pack.where('is_public = false')
    @your_packs = Pack.where("created_by = '#{@user.id}'")
  end

end
