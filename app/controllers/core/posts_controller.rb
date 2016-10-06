class Core::PostsController < ApplicationController
  before_action :set_core_post, only: [:show, :edit, :update, :destroy]

  def index
    @core_posts = ControlModel.call(:Post).all
  end

  def show
  end

  def new
    @core_post = ControlModel.call(:Post).new
  end

  def edit
  end

  def create
    @core_post = ControlModel.call(:Post).new(core_post_params)

    respond_to do |format|
      if @core_post.save
        NotifyUser.call

        format.html { redirect_to post_path(@core_post), notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @core_post }
      else
        format.html { render :new }
        format.json { render json: @core_post.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @core_post.update(core_post_params)
        format.html { redirect_to post_path(@core_post), notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @core_post }
      else
        format.html { render :edit }
        format.json { render json: @core_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/posts/1
  # DELETE /core/posts/1.json
  def destroy
    @core_post.destroy
    respond_to do |format|
      format.html { redirect_to post_index_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_core_post
      @core_post = ControlModel.call(:Post).find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def core_post_params
      params.require(:core_post).permit(:name, :title, :content)
    end
end
