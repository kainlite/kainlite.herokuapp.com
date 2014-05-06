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

  def bio
    render json: HashWithIndifferentAccess.new(YAML.load(File.read(File.expand_path('../../../config/bio.yml', __FILE__))))
  end
end
