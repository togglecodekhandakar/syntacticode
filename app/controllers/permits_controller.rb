class PermitsController < ApplicationController
  before_action :set_permit, only: [:show, :edit, :update, :destroy]

  # GET /permits
  # GET /permits.json
  def index
      if params[:category].blank?
        @permits = Permit.all.order("created_at DESC")
      else
        @category_id = Category.find_by(category_name: params[:category]).id
        @permits = Permit.where(:category_id => @category_id).order("created_at DESC")
      end 
  end

  # GET /permits/1
  # GET /permits/1.json
  def show
  end

  # GET /permits/new
  def new
    @permit = Permit.new

    @categories = Category.all.map { |e| [e.category_name, e.id] }
    @employees = Employee.all.map { |e| [e.employee_id, e.id] }
    @sites = Site.all.map { |e| [e.site_name, e.id] }

  end

  # GET /permits/1/edit
  def edit
    @categories = Category.all.map { |e| [e.category_name, e.id] }
    @employees = Employee.all.map { |e| [e.employee_id, e.id] }
    @sites = Site.all.map { |e| [e.site_name, e.id] }
  end

  # POST /permits
  # POST /permits.json
  def create
    @permit = Permit.new(permit_params)

    @permit.category_id = params[:category_id]
    @permit.employee_id = params[:employee_id]
    @permit.site_id = params[:site_id]

    respond_to do |format|
      if @permit.save
        format.html { redirect_to @permit, notice: 'Permit was successfully created.' }
        format.json { render :show, status: :created, location: @permit }
      else
        format.html { render :new }
        format.json { render json: @permit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /permits/1
  # PATCH/PUT /permits/1.json
  def update
    
    @permit.category_id = params[:category_id]
    @permit.employee_id = params[:employee_id]
    @permit.site_id = params[:site_id]

    respond_to do |format|
      if @permit.update(permit_params)
        format.html { redirect_to @permit, notice: 'Permit was successfully updated.' }
        format.json { render :show, status: :ok, location: @permit }
      else
        format.html { render :edit }
        format.json { render json: @permit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /permits/1
  # DELETE /permits/1.json
  def destroy
    @permit.destroy
    respond_to do |format|
      format.html { redirect_to permits_url, notice: 'Permit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_permit
      @permit = Permit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def permit_params
      params.require(:permit).permit(:permitid, :filename, :category_id, :site_id, :employee_id)
    end
end
