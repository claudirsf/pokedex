class Tipo2sController < ApplicationController
  before_action :set_tipo2, only: [:show, :edit, :update, :destroy]

  # GET /tipo2s
  # GET /tipo2s.json
  def index
    @tipo2s = Tipo2.all
  end

  # GET /tipo2s/1
  # GET /tipo2s/1.json
  def show
  end

  # GET /tipo2s/new
  def new
    @tipo2 = Tipo2.new
  end

  # GET /tipo2s/1/edit
  def edit
  end

  # POST /tipo2s
  # POST /tipo2s.json
  def create
    @tipo2 = Tipo2.new(tipo2_params)

    respond_to do |format|
      if @tipo2.save
        format.html { redirect_to @tipo2, notice: 'Tipo2 was successfully created.' }
        format.json { render :show, status: :created, location: @tipo2 }
      else
        format.html { render :new }
        format.json { render json: @tipo2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo2s/1
  # PATCH/PUT /tipo2s/1.json
  def update
    respond_to do |format|
      if @tipo2.update(tipo2_params)
        format.html { redirect_to @tipo2, notice: 'Tipo2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo2 }
      else
        format.html { render :edit }
        format.json { render json: @tipo2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo2s/1
  # DELETE /tipo2s/1.json
  def destroy
    @tipo2.destroy
    respond_to do |format|
      format.html { redirect_to tipo2s_url, notice: 'Tipo2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo2
      @tipo2 = Tipo2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo2_params
      params.require(:tipo2).permit(:nome)
    end
end
