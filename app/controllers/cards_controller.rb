class CardsController < ApplicationController
  http_basic_authenticate_with name: "pmk", password: "secret", except: [:index, :show]

  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)

    if @card.save
      redirect_to @card
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @card = Card.find(params[:id])
  end

  def update
    @card = Card.find(params[:id])

    if @card.update(card_params)
      redirect_to @card
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy

    redirect_to root_path, status: :see_other
  end
  private
    def card_params
      params.require(:card).permit(:name, :set, :cardnum, :quantity, :image, :status)
    end
end
