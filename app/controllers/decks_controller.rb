class DecksController < ApplicationController
  http_basic_authenticate_with name: "pmk", password: "secret", only: :destroy
  def create
    @card = Card.find(params[:card_id])
    @deck = @card.decks.create(deck_params)
    redirect_to card_path(@card)
  end

  def destroy
    @card = Card.find(params[:card_id])
    @deck = @card.decks.find(params[:id])
    @deck.destroy
    redirect_to card_path(@card), status: :see_other
  end

  private
    def deck_params
      params.require(:deck).permit(:name, :power_level, :status)
    end
end
