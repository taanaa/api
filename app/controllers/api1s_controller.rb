class Api1sController < ApplicationController
  before_action :set_api1, only: %i[ show edit update destroy ]

  # GET /api1s or /api1s.json
  def index
    @api1s = Api1.all
  end

  # GET /api1s/1 or /api1s/1.json
  def show
  end

  # GET /api1s/new
  def new
    @api1 = Api1.new
  end

  # GET /api1s/1/edit
  def edit
  end

  # POST /api1s or /api1s.json
  def create
    @api1 = Api1.new(api1_params)

    respond_to do |format|
      if @api1.save
        format.html { redirect_to api1_url(@api1), notice: "Api1 was successfully created." }
        format.json { render :show, status: :created, location: @api1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @api1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api1s/1 or /api1s/1.json
  def update
    respond_to do |format|
      if @api1.update(api1_params)
        format.html { redirect_to api1_url(@api1), notice: "Api1 was successfully updated." }
        format.json { render :show, status: :ok, location: @api1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @api1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api1s/1 or /api1s/1.json
  def destroy
    @api1.destroy

    respond_to do |format|
      format.html { redirect_to api1s_url, notice: "Api1 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api1
      @api1 = Api1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api1_params
      params.require(:api1).permit(:title, :content)
    end
end
