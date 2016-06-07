class ModernQuotesController < ApplicationController
  before_action :set_modern_quote, only: [:show, :edit, :update, :destroy]

  # GET /modern_quotes
  # GET /modern_quotes.json
  def index
    @modern_quotes = ModernQuote.all
  end

  # GET /modern_quotes/1
  # GET /modern_quotes/1.json
  def show
  end

  # GET /modern_quotes/new
  def new
    @modern_quote = ModernQuote.new
  end

  # GET /modern_quotes/1/edit
  def edit
  end

  # POST /modern_quotes
  # POST /modern_quotes.json
  def create
    @modern_quote = ModernQuote.new(modern_quote_params)

    respond_to do |format|
      if @modern_quote.save
        format.html { redirect_to @modern_quote, notice: 'Modern quote was successfully created.' }
        format.json { render :show, status: :created, location: @modern_quote }
      else
        format.html { render :new }
        format.json { render json: @modern_quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /modern_quotes/1
  # PATCH/PUT /modern_quotes/1.json
  def update
    respond_to do |format|
      if @modern_quote.update(modern_quote_params)
        format.html { redirect_to @modern_quote, notice: 'Modern quote was successfully updated.' }
        format.json { render :show, status: :ok, location: @modern_quote }
      else
        format.html { render :edit }
        format.json { render json: @modern_quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /modern_quotes/1
  # DELETE /modern_quotes/1.json
  def destroy
    @modern_quote.destroy
    respond_to do |format|
      format.html { redirect_to modern_quotes_url, notice: 'Modern quote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_modern_quote
      @modern_quote = ModernQuote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def modern_quote_params
      params[:modern_quote]
    end
end
