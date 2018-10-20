json.array! @speakers do |speaker|
  json.partial! "speaker.json.jbuilder", speaker: speaker
end