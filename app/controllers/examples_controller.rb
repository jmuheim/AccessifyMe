class ExamplesController < ApplicationController
  respond_to :html
  before_action :verify_requested_format!
  load_and_authorize_resource

  def create
    @example = Example.new(example_params)

    @example.save
    respond_with @example
  end

  def update
    @example.update(example_params)
    respond_with @example
  end

  def destroy
    @example.destroy
    respond_with @example
  end

  private

    # Only allow a list of trusted parameters through.
    def example_params
      params.require(:example).permit(:website_id,
                                      :illustration_id,
                                      :demo_or_real,
                                      :name,
                                      :description,
                                      :notes,
                                      :screenshot)
    end
end
