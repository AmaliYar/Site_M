class StsController < ApplicationController
  before_action :set_st, only: [:show, :edit, :update, :destroy]

  # GET /sts
  # GET /sts.json
  def index
    @sts = St.all
  end

  # GET /sts/1
  # GET /sts/1.json
  def show
  end

  # GET /sts/new
  def new
    @st = St.new
  end

  # GET /sts/1/edit
  def edit
  end

  # POST /sts
  # POST /sts.json
  def create
    @st = St.new(st_params)

    respond_to do |format|
      if @st.save
        format.html { redirect_to @st, notice: 'St was successfully created.' }
        format.json { render :show, status: :created, location: @st }
      else
        format.html { render :new }
        format.json { render json: @st.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sts/1
  # PATCH/PUT /sts/1.json
  def update
    respond_to do |format|
      if @st.update(st_params)
        format.html { redirect_to @st, notice: 'St was successfully updated.' }
        format.json { render :show, status: :ok, location: @st }
      else
        format.html { render :edit }
        format.json { render json: @st.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sts/1
  # DELETE /sts/1.json
  def destroy
    @st.destroy
    respond_to do |format|
      format.html { redirect_to sts_url, notice: 'St was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_st
      @st = St.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def st_params
      params.require(:st).permit(:number1, :numder2)
    end
end
