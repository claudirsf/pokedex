class Tipo1sController < ApplicationController
  before_action :set_tipo1, only: [:show, :edit, :update, :destroy]

  # GET /tipo1s
  # GET /tipo1s.json
  def index
    @tipo1s = Tipo1.all
  end

  # GET /tipo1s/1
  # GET /tipo1s/1.json
  def show
  end

  # GET /tipo1s/new
  def new
    @tipo1 = Tipo1.new
  end

  # GET /tipo1s/1/edit
  def edit
  end

  # POST /tipo1s
  # POST /tipo1s.json
  def create
    @tipo1 = Tipo1.new(tipo1_params)

    respond_to do |format|
      if @tipo1.save
        format.html { redirect_to @tipo1, notice: 'Tipo1 was successfully created.' }
        format.json { render :show, status: :created, location: @tipo1 }
      else
        format.html { render :new }
        format.json { render json: @tipo1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo1s/1
  # PATCH/PUT /tipo1s/1.json
  def update
    respond_to do |format|
      if @tipo1.update(tipo1_params)
        format.html { redirect_to @tipo1, notice: 'Tipo1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo1 }
      else
        format.html { render :edit }
        format.json { render json: @tipo1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo1s/1
  # DELETE /tipo1s/1.json
  def destroy
    @tipo1.destroy
    respond_to do |format|
      format.html { redirect_to tipo1s_url, notice: 'Tipo1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo1
      @tipo1 = Tipo1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo1_params
      params.require(:tipo1).permit(:nome)
    end
end
