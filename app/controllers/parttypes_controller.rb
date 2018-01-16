class ParttypesController < ApplicationController
  before_action :set_parttype, only: [:show, :edit, :update, :destroy]

  # GET /parttypes
  # GET /parttypes.json
  def index
    @parttypes = Parttype.all
  end

  # GET /parttypes/1
  # GET /parttypes/1.json
  def show
  end

  # GET /parttypes/new
  def new
    @parttype = Parttype.new
  end

  # GET /parttypes/1/edit
  def edit
  end

  # POST /parttypes
  # POST /parttypes.json
  def create
    @parttype = Parttype.new(parttype_params)

    respond_to do |format|
      if @parttype.save
        format.html { redirect_to @parttype, notice: 'Parttype was successfully created.' }
        format.json { render :show, status: :created, location: @parttype }
      else
        format.html { render :new }
        format.json { render json: @parttype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parttypes/1
  # PATCH/PUT /parttypes/1.json
  def update
    respond_to do |format|
      if @parttype.update(parttype_params)
        format.html { redirect_to @parttype, notice: 'Parttype was successfully updated.' }
        format.json { render :show, status: :ok, location: @parttype }
      else
        format.html { render :edit }
        format.json { render json: @parttype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parttypes/1
  # DELETE /parttypes/1.json
  def destroy
    @parttype.destroy
    respond_to do |format|
      format.html { redirect_to parttypes_url, notice: 'Parttype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parttype
      @parttype = Parttype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parttype_params
      params.require(:parttype).permit(:parttype_id, :parttype_name)
    end
end
