class Api::MeetingsController < ApplicationController
  def all_meetings
    @meetings = Meeting.all
    render "meetings_view.json.jbuilder"
  end

  def one_meeting
    @meeting = Meeting.first
    render "individual_meeting_view.json.jbuilder"
  end
end
