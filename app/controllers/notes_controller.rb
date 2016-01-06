class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to notes_path(params[:id])
    else
      # ValidationエラーなどでDBに保存できない場合new.html.erbを再表示
      render 'new'
    end
  end

  def show
    @note = Note.find(params[:id])
  end

  def update
    redirect_to :action => "index"
  end

  private
  def note_params
    params.require(:note).permit(:title, :content, :written_by)
  end
end
