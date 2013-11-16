class ExtendedFamiliesController < ApplicationController
  before_action :set_extended_family, only: [:show, :edit, :update, :destroy]
  respond_to :html, :js

  # GET /extended_families
  # GET /extended_families.json
  def index
    @extended_families = ExtendedFamily.all
  end

  # GET /extended_families/1
  # GET /extended_families/1.json
  def show
  end

  # GET /extended_families/new
  def new
    @extended_family = ExtendedFamily.new
    respond_with @extended_family
  end

  # GET /extended_families/1/edit
  def edit
  end

  # POST /extended_families
  # POST /extended_families.json
  def create
    @extended_family = ExtendedFamily.new(extended_family_params)
    @extended_family[:next_kin] = extended_family_params['relative']

    respond_to do |format|
      if @extended_family.save
        format.html { redirect_to @extended_family, notice: 'Extended family was successfully created.' }
        format.json { render action: 'show', status: :created, location: @extended_family }
        format.js { @extended_families = ExtendedFamily.all }
      else
        format.html { render action: 'new' }
        format.json { render json: @extended_family.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /extended_families/1
  # PATCH/PUT /extended_families/1.json
  def update
    respond_to do |format|
      if @extended_family.update(extended_family_params)
        format.html { redirect_to @extended_family, notice: 'Extended family was successfully updated.' }
        format.json { head :no_content }
        format.js { @extended_families = ExtendedFamily.all }
      else
        format.html { render action: 'edit' }
        format.json { render json: @extended_family.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /extended_families/1
  # DELETE /extended_families/1.json
  def destroy
    @extended_family.destroy
    respond_to do |format|
      format.html { redirect_to extended_families_url }
      format.json { head :no_content }
      format.js { @extended_families = ExtendedFamily.all }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_extended_family
      @extended_family = ExtendedFamily.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def extended_family_params
      params.require(:extended_family).permit(:relative, :alive)
    end
end
