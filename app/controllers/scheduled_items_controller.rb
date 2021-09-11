class ScheduledItemsController < ApplicationController
  before_action :set_scheduled_item, only: %i[ show edit update destroy ]

  # GET /scheduled_items or /scheduled_items.json
  def index
    @scheduled_items = ScheduledItem.all
  end

  # GET /scheduled_items/1 or /scheduled_items/1.json
  def show
  end

  # GET /scheduled_items/new
  def new
    @scheduled_item = ScheduledItem.new
  end

  # GET /scheduled_items/1/edit
  def edit
  end

  # POST /scheduled_items or /scheduled_items.json
  def create
    @scheduled_item = ScheduledItem.new(scheduled_item_params)

    respond_to do |format|
      if @scheduled_item.save
        format.html { redirect_to @scheduled_item, notice: "Scheduled item was successfully created." }
        format.json { render :show, status: :created, location: @scheduled_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @scheduled_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scheduled_items/1 or /scheduled_items/1.json
  def update
    respond_to do |format|
      if @scheduled_item.update(scheduled_item_params)
        format.html { redirect_to @scheduled_item, notice: "Scheduled item was successfully updated." }
        format.json { render :show, status: :ok, location: @scheduled_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @scheduled_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scheduled_items/1 or /scheduled_items/1.json
  def destroy
    @scheduled_item.destroy
    respond_to do |format|
      format.html { redirect_to scheduled_items_url, notice: "Scheduled item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scheduled_item
      @scheduled_item = ScheduledItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def scheduled_item_params
      params.require(:scheduled_item).permit(:current_cost, :current_price, :description)
    end
end
