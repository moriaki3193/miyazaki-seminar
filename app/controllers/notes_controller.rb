class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def new
  end

  def show
    id = params[:id]
  end

  def update

    redirect_to :action => "index"
  end
end
