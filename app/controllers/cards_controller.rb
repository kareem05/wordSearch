class CardsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_card, only: [:show, :edit, :update, :destroy]
  
  # GET /cards
  # GET /cards.json
  def index
    @cards = Card.all
    @card = Card.new
  end

  # GET /cards/1
  # GET /cards/1.json
  def show

$card_title = @card.title
$card_content = @card.content
$card_size = @card.size

puts "#$card_size"
  end

  # GET /cards/new
  def new
    @card = Card.new
  end

  # GET /posts/1/edit
  def edit
  end


  # POST /posts
  # POST /posts.json
  def create
    @card = Card.new(card_params)
 
    respond_to do |format|
      if @card.save
        format.html { redirect_to @card, notice: 'Card was successfully created.' }
        format.json { render :show, status: :created, location: @card }
        format.js
      else
        format.html { render :new }
        format.json { render json: @card.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end



  def update
    respond_to do |format|
      if @card.update(card_params)
        format.html { redirect_to @card, notice: 'Card was successfully updated.' }
        format.json { render :show, status: :ok, location: @card }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @card.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  def destroy
    @card.destroy
    respond_to do |format|
      format.html { redirect_to cards_url, notice: 'Card was successfully destroyed.' }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card
      @card = Card.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def card_params
      params.require(:card).permit(:title, :content, :size)
    end

    helper_method :check

end