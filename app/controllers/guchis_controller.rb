class GuchisController < ApplicationController
  before_action :set_guchi, only: [:show, :edit, :update, :destroy]

  # GET /guchis
  # GET /guchis.json
  def index
    @guchis = Guchi.all
  end

  # GET /guchis/1
  # GET /guchis/1.json
  def show
  end

  # GET /guchis/new
  def new
    @guchi = Guchi.new
  end

  # GET /guchis/1/edit
  def edit
  end

  # POST /guchis
  # POST /guchis.json
  def create
    @guchi = Guchi.new(guchi_params)

    respond_to do |format|
      if @guchi.save
        format.html { redirect_to "/guchis/index", notice: 'Guchi was successfully created.' }
        format.json { render :show, status: :created, location: @guchi }
      else
        format.html { render :new }
        format.json { render json: @guchi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guchis/1
  # PATCH/PUT /guchis/1.json
  def update
    respond_to do |format|
      if @guchi.update(guchi_params)
        format.html { redirect_to @guchi, notice: 'Guchi was successfully updated.' }
        format.json { render :show, status: :ok, location: @guchi }
      else
        format.html { render :edit }
        format.json { render json: @guchi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guchis/1
  # DELETE /guchis/1.json
  def destroy
    @guchi.destroy
    respond_to do |format|
      format.html { redirect_to guchis_url, notice: 'Guchi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guchi
      @guchi = Guchi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guchi_params
      params.require(:guchi).permit(:name, :text)
    end
end
