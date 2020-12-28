class DatosController < ApplicationController
  before_action :set_dato, only: [:show, :edit, :update, :destroy]

  # GET /datos
  # GET /datos.json
  def index
    
      @datos = HTTParty.get   "https://restcountries-v1.p.rapidapi.com/all",

      headers:{
        "x-rapidapi-key": "ec1f30fc45msh1ac6497f4cd3305p1b0b01jsnc1d215c1e33a",
        "x-rapidapi-host": "restcountries-v1.p.rapidapi.com",
        
      }
      
  end

  # GET /datos/1
  # GET /datos/1.json
  def show
  end

  # GET /datos/new
  def new
    @dato = Dato.new
  end

  # GET /datos/1/edit
  def edit
  end

  # POST /datos
  # POST /datos.json
  def create
    @dato = Dato.new(dato_params)

    respond_to do |format|
      if @dato.save
        format.html { redirect_to @dato, notice: 'Dato was successfully created.' }
        format.json { render :show, status: :created, location: @dato }
      else
        format.html { render :new }
        format.json { render json: @dato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /datos/1
  # PATCH/PUT /datos/1.json
  def update
    respond_to do |format|
      if @dato.update(dato_params)
        format.html { redirect_to @dato, notice: 'Dato was successfully updated.' }
        format.json { render :show, status: :ok, location: @dato }
      else
        format.html { render :edit }
        format.json { render json: @dato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /datos/1
  # DELETE /datos/1.json
  def destroy
    @dato.destroy
    respond_to do |format|
      format.html { redirect_to datos_url, notice: 'Dato was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dato
      @dato = Dato.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dato_params
      params.require(:dato).permit(:dato1)
    end
end
