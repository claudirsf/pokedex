class BichosController < ApplicationController
  before_action :set_bicho, only: [:show, :edit, :update, :destroy]

  # GET /bichos
  # GET /bichos.json
  def index
    @bichos = Bicho.all
  end

  # GET /bichos/1
  # GET /bichos/1.json
  def show
  end

  # GET /bichos/new
  def new
    @bicho = Bicho.new
  end

  # GET /bichos/1/edit
  def edit
  end

  # POST /bichos
  # POST /bichos.json
  def create
    @bicho = Bicho.new(bicho_params)

    respond_to do |format|
      if @bicho.save
        format.html { redirect_to @bicho, notice: 'Bicho was successfully created.' }
        format.json { render :show, status: :created, location: @bicho }
      else
        format.html { render :new }
        format.json { render json: @bicho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bichos/1
  # PATCH/PUT /bichos/1.json
  def update
    respond_to do |format|
      if @bicho.update(bicho_params)
        format.html { redirect_to @bicho, notice: 'Bicho was successfully updated.' }
        format.json { render :show, status: :ok, location: @bicho }
      else
        format.html { render :edit }
        format.json { render json: @bicho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bichos/1
  # DELETE /bichos/1.json
  def destroy
    @bicho.destroy
    respond_to do |format|
      format.html { redirect_to bichos_url, notice: 'Bicho was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bicho
      @bicho = Bicho.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bicho_params
      params.require(:bicho).permit(:nome, :desenho, :tipo1, :tipo2, :dex, :forma, :bio)
    end
end
