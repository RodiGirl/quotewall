class CombinationsController < ApplicationController
  before_action :set_combination, only: [:show, :edit, :update, :destroy]

  # GET /combinations
  # GET /combinations.json
  def index
    @combinations = Combination.all
     # @comments = Comment.all
  end

  # GET /combinations/1
  # GET /combinations/1.json
  def show
    @combinations = Combination.all
  end

  # GET /combinations/new
  def new
    @combination = Combination.new
  
  end

  # GET /combinations/1/edit
  def edit
  end

  # POST /combinations
  # POST /combinations.json
  def create
    @combination = Combination.new(combination_params)

    respond_to do |format|
      if @combination.save
        format.html { redirect_to @combination, notice: 'Combination was successfully created.' }
        format.json { render :show, status: :created, location: @combination }
      else
        format.html { render :new }
        format.json { render json: @combination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /combinations/1
  # PATCH/PUT /combinations/1.json
  def update
    respond_to do |format|
      if @combination.update(combination_params)
        format.html { redirect_to @combination, notice: 'Combination was successfully updated.' }
        format.json { render :show, status: :ok, location: @combination }
      else
        format.html { render :edit }
        format.json { render json: @combination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /combinations/1
  # DELETE /combinations/1.json
  def destroy
    @combination.destroy
    respond_to do |format|
      format.html { redirect_to combinations_url, notice: 'Combination was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_combination
      @combination = Combination.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def combination_params
      params.require(:combination).permit(:context, :saidon)
     
    end
    
end
