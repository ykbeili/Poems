class PoemsController < ApplicationController
  def new
    @poem = Poem.new
  end
  def index
    @poems = Poem.order(:created_at)
  end
  def create
    poems_params = params.require(:poem).permit([:name, :description])
    @poem = Poem.new poems_params
    @poem.save
    redirect_to root_path
  end
  def show
    @poem = Poem.find params[:id]
  end
end
