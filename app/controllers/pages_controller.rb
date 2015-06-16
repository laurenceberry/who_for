class PagesController < ApplicationController
  def index
    @profiles = Profile.all.shuffle.take(6)
  end
end
