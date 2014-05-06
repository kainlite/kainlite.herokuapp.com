class FramesController < ApplicationController
  # GET /frames
  # GET /frames.json
  def index
    kind = params.fetch(:kind) { '' }
    if kind == 'works'
      @frames = Frame.work
    elsif kind == 'studies'
      @frames = Frame.study
    else
      @frames = Frame.all
    end

    render json: @frames
  end

  # GET /frames/:id
  # GET /frames/:id.json
  def show
    render json: Frame.find(params[:id])
  end
end
