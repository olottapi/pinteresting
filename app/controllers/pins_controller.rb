class PinsController < ApplicationController
  respond_to :html
  before_action :set_pins, only: [:show, :edit, :update, :destroy]

  def index
    @pins = Pins.all
    respond_with(@pins)
  end

  def show
    respond_with(@pins)
  end

  def new
    @pins = Pins.new
    respond_with(@pins)
  end

  def edit
  end

  def create
    @pins = Pins.new(pins_params)
    @pin.save
    respond_with(@pins)
  end

  def update
    @pin.update(pins_params)
    respond_with(@pins)
  end

  def destroy
    @pin.destroy
    respond_with(@pins)
  end

  private
    def set_pins
      @pins = Pins.find(params[:id])
    end

    def pins_params
      params.require(:pins).permit(:description)
    end
end
