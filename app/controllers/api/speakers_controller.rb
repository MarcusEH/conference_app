class Api::SpeakersController < ApplicationController

  def show
    input_id = params[:id]
    @speaker = Speaker.find_by(id: input_id)
    render "show.json.jbuilder"
  end

  def index
    @speakers = Speaker.all
    render "index.json.jbuilder"
  end

  def create
    @speaker = Speaker.new( 
      first_name: params[:input_first_name],
      last_name: params[:input_last_name],
      email: params[:input_email],
      gender: params[:input_gender],
      age: params[:input_age]
      )
    if @speaker.save
      render 'show.json.jbuilder'
    else
      render json: {error: @speaker.errors.full_messages} 
    end
  end

  def update
    speaker_id = params[:id]
    @speaker = Speaker.find_by(id: speaker_id)
    @speaker.first_name = params[:input_first_name] || @speaker.first_name
    @speaker.last_name = params[:input_last_name] || @speaker.last_name
    @speaker.email = params[:input_email] || @speaker.email
    @speaker.gender = params[:input_gender] || @speaker.gender
    @speaker.age = params[:input_age] || @speaker.age
    if @speaker.save
      render 'show.json.jbuilder'
    else
      render json: {error: @speaker.errors.full_messages} 
    end
  end

  def destroy
    speaker_id = params[:id]
    @speaker = Speaker.find_by(id: speaker_id)
    @speaker.destroy

    render 'destroy.json.jbuilder'
  end
end
