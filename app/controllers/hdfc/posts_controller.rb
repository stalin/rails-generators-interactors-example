class Hdfc::PostsController < Core::PostsController
  private
  def core_post_params
    params.require(:core_post).permit(:name, :title, :content, :location)
  end
end
