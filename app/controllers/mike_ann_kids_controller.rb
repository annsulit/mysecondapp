class MikeAnnKidsController < ApplicationController
  before_action :set_mike_ann_kid, only: [:show, :edit, :update, :destroy]

  # GET /mike_ann_kids
  # GET /mike_ann_kids.json
  def index
    @mike_ann_kids = MikeAnnKid.all
  end

  # GET /mike_ann_kids/1
  # GET /mike_ann_kids/1.json
  def show
  end

  # GET /mike_ann_kids/new
  def new
    @mike_ann_kid = MikeAnnKid.new
  end

  # GET /mike_ann_kids/1/edit
  def edit
  end

  # POST /mike_ann_kids
  # POST /mike_ann_kids.json
  def create
    @mike_ann_kid = MikeAnnKid.new(mike_ann_kid_params)

    respond_to do |format|
      if @mike_ann_kid.save
        format.html { redirect_to @mike_ann_kid, notice: 'Mike ann kid was successfully created.' }
        format.json { render :show, status: :created, location: @mike_ann_kid }
      else
        format.html { render :new }
        format.json { render json: @mike_ann_kid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mike_ann_kids/1
  # PATCH/PUT /mike_ann_kids/1.json
  def update
    respond_to do |format|
      if @mike_ann_kid.update(mike_ann_kid_params)
        format.html { redirect_to @mike_ann_kid, notice: 'Mike ann kid was successfully updated.' }
        format.json { render :show, status: :ok, location: @mike_ann_kid }
      else
        format.html { render :edit }
        format.json { render json: @mike_ann_kid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mike_ann_kids/1
  # DELETE /mike_ann_kids/1.json
  def destroy
    @mike_ann_kid.destroy
    respond_to do |format|
      format.html { redirect_to mike_ann_kids_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mike_ann_kid
      @mike_ann_kid = MikeAnnKid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mike_ann_kid_params
      params.require(:mike_ann_kid).permit(:first_name, :last_name, :age)
    end
end
