class DecksController < ApplicationController
  def create
    @card = Card.find(params[:card_id])
    @deck = @card.decks.create(deck_params)
    redirect_to card_path(@card)
  end

  private
    def deck_params
      params.require(:deck).permit(:name, :power_level)
    end
end
