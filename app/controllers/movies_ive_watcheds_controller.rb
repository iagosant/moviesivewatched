class MoviesIveWatchedsController < ApplicationController
  before_action :set_movies_ive_watched, only: [:show, :edit, :update, :destroy]

  # GET /movies_ive_watcheds
  # GET /movies_ive_watcheds.json
  def index
    @movies_ive_watcheds = MoviesIveWatched.all
  end

  # GET /movies_ive_watcheds/1
  # GET /movies_ive_watcheds/1.json
  def show
  end

  # GET /movies_ive_watcheds/new
  def new
    @movies_ive_watched = MoviesIveWatched.new
  end

  # GET /movies_ive_watcheds/1/edit
  def edit
  end

  # POST /movies_ive_watcheds
  # POST /movies_ive_watcheds.json
  def create
    @movies_ive_watched = MoviesIveWatched.new(movies_ive_watched_params)

    respond_to do |format|
      if @movies_ive_watched.save
        format.html { redirect_to @movies_ive_watched, notice: 'Movies ive watched was successfully created.' }
        format.json { render :show, status: :created, location: @movies_ive_watched }
      else
        format.html { render :new }
        format.json { render json: @movies_ive_watched.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movies_ive_watcheds/1
  # PATCH/PUT /movies_ive_watcheds/1.json
  def update
    respond_to do |format|
      if @movies_ive_watched.update(movies_ive_watched_params)
        format.html { redirect_to @movies_ive_watched, notice: 'Movies ive watched was successfully updated.' }
        format.json { render :show, status: :ok, location: @movies_ive_watched }
      else
        format.html { render :edit }
        format.json { render json: @movies_ive_watched.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies_ive_watcheds/1
  # DELETE /movies_ive_watcheds/1.json
  def destroy
    @movies_ive_watched.destroy
    respond_to do |format|
      format.html { redirect_to movies_ive_watcheds_url, notice: 'Movies ive watched was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movies_ive_watched
      @movies_ive_watched = MoviesIveWatched.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movies_ive_watched_params
      params.require(:movies_ive_watched).permit(:title, :director, :date)
    end
end
