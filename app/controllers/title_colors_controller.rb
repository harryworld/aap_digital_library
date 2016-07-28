class TitleColorsController < ApplicationController
  before_action :set_title_color, only: [:show, :edit, :update, :destroy]

  # GET /title_colors
  # GET /title_colors.json
  def index
    @title_colors = TitleColor.all
  end

  # GET /title_colors/1
  # GET /title_colors/1.json
  def show
  end

  # GET /title_colors/new
  def new
    @title_color = TitleColor.new
  end

  # GET /title_colors/1/edit
  def edit
  end

  # POST /title_colors
  # POST /title_colors.json
  def create
    @title_color = TitleColor.new(title_color_params)

    respond_to do |format|
      if @title_color.save
        format.html { redirect_to @title_color, notice: 'Title color was successfully created.' }
        format.json { render :show, status: :created, location: @title_color }
      else
        format.html { render :new }
        format.json { render json: @title_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /title_colors/1
  # PATCH/PUT /title_colors/1.json
  def update
    respond_to do |format|
      if @title_color.update(title_color_params)
        format.html { redirect_to @title_color, notice: 'Title color was successfully updated.' }
        format.json { render :show, status: :ok, location: @title_color }
      else
        format.html { render :edit }
        format.json { render json: @title_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /title_colors/1
  # DELETE /title_colors/1.json
  def destroy
    @title_color.destroy
    respond_to do |format|
      format.html { redirect_to title_colors_url, notice: 'Title color was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_title_color
      @title_color = TitleColor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def title_color_params
      params.require(:title_color).permit(:name, :hex)
    end
end
