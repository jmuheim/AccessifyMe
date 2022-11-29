class BloopersController < ApplicationController
  respond_to :html
  before_action :verify_requested_format!
  load_and_authorize_resource

  def create
    @blooper = Blooper.new(blooper_params)

    @blooper.save
    respond_with @blooper
  end

  def update
    @blooper.update(blooper_params)
    respond_with @blooper
  end

  def destroy
    @blooper.destroy
    respond_with @blooper
  end

  private

    # Only allow a list of trusted parameters through.
    def blooper_params
      params.require(:blooper).permit(:website_id,
                                      :pattern_id,
                                      :demo_or_real,
                                      :name,
                                      :description,
                                      :notes,
                                      :screenshot)
    end
end
