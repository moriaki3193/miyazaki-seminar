class NotesController < ApplicationController
  def index
    @notes = Note.all
    @note = Note.find(2)
  end
end
