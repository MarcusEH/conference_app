json.meetings @meetings do |meeting|
  json.partial! 'meeting.json.jbuilder', meeting: meeting
end