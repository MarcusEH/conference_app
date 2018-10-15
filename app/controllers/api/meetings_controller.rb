class Api::MeetingsController < ApplicationController
  def all_meetings
    @meetings = Meeting.all
    render "meetings_view.json.jbuilder"
  end
end
