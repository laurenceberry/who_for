class PagesController < ApplicationController
  def index
    @packs = Pack.all.shuffle.take(6)
  end
end
