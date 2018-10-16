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
  
end
