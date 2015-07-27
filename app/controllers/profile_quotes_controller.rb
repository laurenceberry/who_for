class ProfileQuotesController < ApplicationController
  before_action :set_profile_quote, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @profile_quotes = ProfileQuote.all
    respond_with(@profile_quotes)
  end

  def show
    respond_with(@profile_quote)
  end

  def new
    @profile_quote = ProfileQuote.new
    respond_with(@profile_quote)
  end

  def edit
  end

  def create
    @profile_quote = ProfileQuote.new(profile_quote_params)
    @profile_quote.save
    respond_with(@profile_quote)
  end

  def update
    @profile_quote.update(profile_quote_params)
    respond_with(@profile_quote)
  end

  def destroy
    @profile_quote.destroy
    respond_with(@profile_quote)
  end

  private
    def set_profile_quote
      @profile_quote = ProfileQuote.find(params[:id])
    end

    def profile_quote_params
      params.require(:profile_quote).permit(:quote, :profile_id)
    end
end
