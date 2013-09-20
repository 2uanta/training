class PagesController < ApplicationController
  before_action :set_page, only: [:show, :ediy, :update, :destroy]

  def index
  	@notice = "This came from the pages controller pages_controller.rb"
  	@pages = Page.all
  end

  def about
  end

  def new
  	@page = Page.new
  end

  def create
  	@page = Page.new(page_params)
  	@page.save
  	redirect_to action: :show, id: @page.id
  end

  def show
  end

  private
  	# Use callbacks to share common setup to constraints between actions.
  	def set_page
  		@page = Page.find(params[:id])
  	end

  	# Never trust parameters from the scary internet, only allow the white list through.
  	def page_params
  		params.require(:page).permit(:title, :slug, :content)
  	end
end
