class PagesController < ApplicationController

  def index
    @user = current_user
    @packs = Pack.where('is_public = false')
    if current_user
      @your_packs = Pack.where("created_by = '#{@user.id}'")
    else
      @your_packs = nil
    end
  end

end
