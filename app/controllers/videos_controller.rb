class VideosController < ApplicationController
  respond_to :html
  before_action :verify_requested_format!
  load_and_authorize_resource
  before_action :enforce_slugged_param, only: :show

  def create
    @video = Video.new(video_params)

    @video.save
    respond_with @video
  end

  def update
    @video.update(video_params)
    respond_with @video
  end

  def destroy
    @video.destroy
    respond_with @video
  end

  def transcript
    # TODO: Use load_and_authorize_resource for this!
    @video = Video.find(params[:video_id])

    respond_to do |format|
      format.html { }
      format.pdf { redirect_to @video, notice: "Not implemented yet!" }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def enforce_slugged_param
      @video = Video.find(params[:id])
      redirect_to @video if params[:id] =~ /^\d+$/ # Redirect to slugged URL if only ID was provided, i.e. videos/123 => videos/123-introduction-to-accessibility
    end

    # Only allow a list of trusted parameters through.
    def video_params
      params.require(:video).permit(:title, :lead, :description, :youtube_id)
    end
end
