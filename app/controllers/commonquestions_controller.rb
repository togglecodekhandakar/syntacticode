class CommonquestionsController < ApplicationController
  before_action :set_commonquestion, only: [:show, :edit, :update, :destroy]

  # GET /commonquestions
  # GET /commonquestions.json
  def index
    @commonquestions = Commonquestion.all
  end

  # GET /commonquestions/1
  # GET /commonquestions/1.json
  def show
  end

  # GET /commonquestions/new
  def new
    @commonquestion = Commonquestion.new

    @questions = Question.all.map { |e| [e.question_id, e.id] }
    @parttypes = Parttype.all.map { |e| [e.parttype_name, e.id] }
    @questiontypes = Questiontype.all.map { |e| [e.questiontype_name, e.id] }

  end

  # GET /commonquestions/1/edit
  def edit
    @questions = Question.all.map { |e| [e.question_id, e.id] }
    @parttypes = Parttype.all.map { |e| [e.parttype_name, e.id] }
    @questiontypes = Questiontype.all.map { |e| [e.questiontype_name, e.id] }
  end

  # POST /commonquestions
  # POST /commonquestions.json
  def create
    @commonquestion = Commonquestion.new(commonquestion_params)

    @commonquestion.question_id = params[:question_id]
    @commonquestion.parttype_id = params[:parttype_id]
    @commonquestion.questiontype_id = params[:questiontype_id]

    respond_to do |format|
      if @commonquestion.save
        format.html { redirect_to @commonquestion, notice: 'Commonquestion was successfully created.' }
        format.json { render :show, status: :created, location: @commonquestion }
      else
        format.html { render :new }
        format.json { render json: @commonquestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commonquestions/1
  # PATCH/PUT /commonquestions/1.json
  def update

    @commonquestion.question_id = params[:question_id]
    @commonquestion.parttype_id = params[:parttype_id]
    @commonquestion.questiontype_id = params[:questiontype_id]

    respond_to do |format|
      if @commonquestion.update(commonquestion_params)
        format.html { redirect_to @commonquestion, notice: 'Commonquestion was successfully updated.' }
        format.json { render :show, status: :ok, location: @commonquestion }
      else
        format.html { render :edit }
        format.json { render json: @commonquestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commonquestions/1
  # DELETE /commonquestions/1.json
  def destroy
    @commonquestion.destroy
    respond_to do |format|
      format.html { redirect_to commonquestions_url, notice: 'Commonquestion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commonquestion
      @commonquestion = Commonquestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def commonquestion_params
      params.require(:commonquestion).permit(:commonquestion_id, :question_text, :options, :answer_option_number, :question_id, :parttype_id, :questiontype_id)
    end
end
