class VirtuesController < ApplicationController
  respond_to :html
  before_action :verify_requested_format!
  load_and_authorize_resource
  before_action :enforce_slugged_param, only: :show

  def index
    if params[:role].present?
      @virtues = @virtues.where("relevant_for_#{params[:role]}s" => true)
    end
  end

  def show
    @video = Video.find(2)
  end

  def create
    @virtue = Virtue.new(virtue_params)

    @virtue.save
    respond_with @virtue
  end

  def update
    @virtue.update(virtue_params)
    respond_with @virtue
  end

  def destroy
    @virtue.destroy
    respond_with @virtue
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def enforce_slugged_param
      @virtue = Virtue.find(params[:id])
      redirect_to @virtue if params[:id] =~ /^\d+$/ # Redirect to slugged URL if only ID was provided, i.e. virtues/123 => virtues/123-introduction-to-accessibility
    end

    # Only allow a list of trusted parameters through.
    def virtue_params
      params.require(:virtue).permit(:title, :lead, :description, :youtube_id)
    end
end
