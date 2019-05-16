class DexesController < ApplicationController
  before_action :set_dex, only: [:show, :edit, :update, :destroy]

  # GET /dexes
  # GET /dexes.json
  def index
    @dexes = Dex.all
  end

  # GET /dexes/1
  # GET /dexes/1.json
  def show
  end

  # GET /dexes/new
  def new
    @dex = Dex.new
  end

  # GET /dexes/1/edit
  def edit
  end

  # POST /dexes
  # POST /dexes.json
  def create
    @dex = Dex.new(dex_params)

    respond_to do |format|
      if @dex.save
        format.html { redirect_to @dex, notice: 'Dex was successfully created.' }
        format.json { render :show, status: :created, location: @dex }
      else
        format.html { render :new }
        format.json { render json: @dex.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dexes/1
  # PATCH/PUT /dexes/1.json
  def update
    respond_to do |format|
      if @dex.update(dex_params)
        format.html { redirect_to @dex, notice: 'Dex was successfully updated.' }
        format.json { render :show, status: :ok, location: @dex }
      else
        format.html { render :edit }
        format.json { render json: @dex.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dexes/1
  # DELETE /dexes/1.json
  def destroy
    @dex.destroy
    respond_to do |format|
      format.html { redirect_to dexes_url, notice: 'Dex was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dex
      @dex = Dex.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dex_params
      params.require(:dex).permit(:numero)
    end
end
