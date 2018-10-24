class Api::MeetingsController < ApplicationController
  def index
    @meetings = Meeting.all
    render "index.json.jbuilder"
  end

  def show
    # @meeting = Meeting.first
    meeting_id = params[:id]
    @meeting = Meeting.find_by(id: meeting_id)
    # render "individual_meeting_view.json.jbuilder"
    render "show.json.jbuilder"
  end

  def create
    @meeting = Meeting.new(
      title: params[:input_title],
      agenda: params[:input_agenda],
      time: params[:input_time],
      location: params[:input_location],
      remote: params[:input_remote]
      )
    if @meeting.save
      render 'show.json.jbuilder'
    else
      render json: {error: @meeting.errors.full_messages} 
    end
  end

  def update
    @meeting = Meeting.find_by(id: params[:id])
    @meeting.title = params[:input_title] || @meeting.title
    @meeting.agenda = params[:input_agenda] || @meeting.agenda
    @meeting.time = params[:input_time] || @meeting.time
    @meeting.location = params[:input_location] || @meeting.location
    @meeting.remote = params[:input_remote] || @meeting.remote
    if @meeting.save
      render 'show.json.jbuilder'
    else
      render json: {error: @meeting.errors.full_messages} 
    end
  end
  
  def destroy
    @meeting = Meeting.find_by(id: params[:id])
    @meeting.destroy
    
    render 'destroy.json.jbuilder'
    
  end

end
