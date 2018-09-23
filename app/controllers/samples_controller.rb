class SamplesController < ApplicationController
  def create
    @sample = Sample.new(params.permit(:title))
    @sample.save!
    render json: @sample
  end

  def destroy
    @sample = Sample.find(params[:id])
    @sample.destroy!
    render json: @sample
  end

  def index
    @samples = Sample.all
    render json: @samples
  end

  def show
    @sample = Sample.find(params[:id])
    render json: @sample
  end

  def update
    @sample = Sample.find(params[:id])
    @sample.attributes = params.permit(:title)
    @sample.save!
    render json: @sample
  end
end
