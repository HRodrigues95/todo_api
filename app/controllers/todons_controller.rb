class TodonsController < ApplicationController
  before_action :set_todon, only: [:show, :update, :destroy]

  # GET /todons
  def index
    @todons = Todon.all

    render json: @todons
  end

  # GET /todons/1
  def show
    render json: @todon
  end

  # POST /todons
  def create
    @todon = Todon.new(todon_params)

    if @todon.save
      render json: @todon, status: :created, location: @todon
    else
      render json: @todon.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /todons/1
  def update
    if @todon.update_attribute(:done, true)
      render json: @todon
    else
      render json: @todon.errors, status: :unprocessable_entity
    end
  end

  # DELETE /todons/1
  def destroy
    if @todon.destroy
      render status: 200
    end
  end

  private
    def set_todon
      @todon = Todon.find(params[:id])
    end

    def todon_params
      params.require(:todon).permit(:title, :description, :end)
    end
end
