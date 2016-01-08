class PrecommentsController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_precomment, only: [:show, :edit, :update, :destroy]

  # GET /precomments
  # GET /precomments.json
  def index
    @precomments = Precomment.all
  end

  # GET /precomments/1
  # GET /precomments/1.json
  def show
  end

  # GET /precomments/new
  def new
    @precomment = Precomment.new
  end

  # GET /precomments/1/edit
  def edit
  end

  # POST /precomments
  # POST /precomments.json
  def create
    @precomment = Precomment.new(precomment_params)
    @precomment.user = current_user

    respond_to do |format|
      if @precomment.save
        format.html { redirect_to @precomment, notice: 'Precomment was successfully created.' }
        format.json { render :show, status: :created, location: @precomment }
      else
        format.html { render :new }
        format.json { render json: @precomment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /precomments/1
  # PATCH/PUT /precomments/1.json
  def update
    respond_to do |format|
      if @precomment.update(precomment_params)
        format.html { redirect_to @precomment, notice: 'Precomment was successfully updated.' }
        format.json { render :show, status: :ok, location: @precomment }
      else
        format.html { render :edit }
        format.json { render json: @precomment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /precomments/1
  # DELETE /precomments/1.json
  def destroy
    @precomment.destroy
    respond_to do |format|
      format.html { redirect_to precomments_url, notice: 'Precomment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_precomment
      @precomment = Precomment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def precomment_params
      params.require(:precomment).permit(:title, :body, :event_id, :user_id, :created_by)
    end
end
