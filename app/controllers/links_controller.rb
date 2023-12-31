class LinksController < ApplicationController
  before_action :set_link, only: [:show]
  def index
    @links = Link.recent_first
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      redirect_to links_path
    else
      render :index, status: :unprocessable_entity
    end

  end

  def show
 
  end

  private
    def link_params
      params.require(:link).permit(:url)
    end

  end