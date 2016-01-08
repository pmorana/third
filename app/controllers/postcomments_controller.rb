class PostcommentsController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_postcomment, only: [:show, :edit, :update, :destroy]

  # GET /postcomments
  # GET /postcomments.json
  def index
    @postcomments = Postcomment.all
  end

  # GET /postcomments/1
  # GET /postcomments/1.json
  def show
  end

  # GET /postcomments/new
  def new
    @postcomment = Postcomment.new
  end

  # GET /postcomments/1/edit
  def edit
  end

  # POST /postcomments
  # POST /postcomments.json
  def create
    @postcomment = Postcomment.new(postcomment_params)
    @postcomment.user = current_user

    respond_to do |format|
      if @postcomment.save
        format.html { redirect_to @postcomment, notice: 'Postcomment was successfully created.' }
        format.json { render :show, status: :created, location: @postcomment }
      else
        format.html { render :new }
        format.json { render json: @postcomment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postcomments/1
  # PATCH/PUT /postcomments/1.json
  def update
    respond_to do |format|
      if @postcomment.update(postcomment_params)
        format.html { redirect_to @postcomment, notice: 'Postcomment was successfully updated.' }
        format.json { render :show, status: :ok, location: @postcomment }
      else
        format.html { render :edit }
        format.json { render json: @postcomment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postcomments/1
  # DELETE /postcomments/1.json
  def destroy
    @postcomment.destroy
    respond_to do |format|
      format.html { redirect_to postcomments_url, notice: 'Postcomment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postcomment
      @postcomment = Postcomment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def postcomment_params
      params.require(:postcomment).permit(:title, :body, :event_id, :user_id, :created_by)
    end
end
