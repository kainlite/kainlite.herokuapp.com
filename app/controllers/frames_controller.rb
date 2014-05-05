class FramesController < ApplicationController
  # GET /frames
  # GET /frames.json
  def index
    kind = params.fetch(:type) { '' }
    if kind == 'work'
      @frames = Frame.work
    elsif kind == 'study'
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
