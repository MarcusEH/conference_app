class Api::SpeakersController < ApplicationController

  def first_speaker
    @speaker = Speaker.first
    render "first_speaker.json.jbuilder"
  end

  def all_speakers
    @speakers = Speaker.all
    render "all_speakers.json.jbuilder"
  end

end
