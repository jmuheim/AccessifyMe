class InsightsController < ApplicationController
  respond_to :html
  before_action :verify_requested_format!
  load_and_authorize_resource
  before_action :enforce_slugged_param, only: :show

  def index
    if params[:role].present?
      @insights = @insights.where("inspires_#{params[:role]}" => true)
    end
  end

  def show
    @video = Video.find(2)
  end

  def create
    @insight = Insight.new(insight_params)

    @insight.save
    respond_with @insight
  end

  def update
    @insight.update(insight_params)
    respond_with @insight
  end

  def destroy
    @insight.destroy
    respond_with @insight
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def enforce_slugged_param
      @insight = Insight.find(params[:id])
      redirect_to @insight if params[:id] =~ /^\d+$/ # Redirect to slugged URL if only ID was provided, i.e. insights/123 => insights/123-introduction-to-accessibility
    end

    # Only allow a list of trusted parameters through.
    def insight_params
      params.require(:insight).permit(:title, :lead, :description, :youtube_id)
    end
end
