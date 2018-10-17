class Api::SpeakersController < ApplicationController

  def show
    input_id = params[:id]
    @speaker = Speaker.find_by(id: input_id)
    render "show.json.jbuilder"
  end

  def index
    @speakers = Speaker.all
    render "all_speakers.json.jbuilder"
  end

end
