class WcagElementsController < ApplicationController
  before_action :set_wcag_element, only: %i[ show edit update destroy ]

  # GET /wcag_elements or /wcag_elements.json
  def index
    @wcag_elements = WcagElement.tree
  end

  # GET /wcag_elements/1 or /wcag_elements/1.json
  def show
  end

  # GET /wcag_elements/new
  def new
    @wcag_element = WcagElement.new
  end

  # GET /wcag_elements/1/edit
  def edit
  end

  # POST /wcag_elements or /wcag_elements.json
  def create
    @wcag_element = WcagElement.new(wcag_element_params)

    respond_to do |format|
      if @wcag_element.save
        format.html { redirect_to wcag_element_url(@wcag_element), notice: "Wcag element was successfully created." }
        format.json { render :show, status: :created, location: @wcag_element }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @wcag_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wcag_elements/1 or /wcag_elements/1.json
  def update
    respond_to do |format|
      if @wcag_element.update(wcag_element_params)
        format.html { redirect_to wcag_element_url(@wcag_element), notice: "Wcag element was successfully updated." }
        format.json { render :show, status: :ok, location: @wcag_element }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @wcag_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wcag_elements/1 or /wcag_elements/1.json
  def destroy
    @wcag_element.destroy

    respond_to do |format|
      format.html { redirect_to wcag_elements_url, notice: "Wcag element was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wcag_element
      binding.pry
      @wcag_element = if params[:slug].present?
                        WcagElement.find_by_slug(params[:slug])
                      else
                        WcagElement.find(params[:id])
                      end
    end

    # Only allow a list of trusted parameters through.
    def wcag_element_params
      params.require(:wcag_element).permit(:name, :level, :description, :parent_id, :position, :type)
    end
end
