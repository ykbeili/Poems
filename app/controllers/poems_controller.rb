class PoemsController < ApplicationController
  def new
    @poem = Poem.new
  end
  def index
    @poems = Poem.order(created_at: :desc)
  end
  def create
    poems_params = params.require(:poem).permit([:name, :description])
    @poem = Poem.new poems_params
    if @poem.save
    redirect_to poems_path
    else
    render :new
    end
  end
  def show
    @poem = Poem.find params[:id]
  end
end
