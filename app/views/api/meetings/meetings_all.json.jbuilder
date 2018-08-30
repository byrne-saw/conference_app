json.array! @meetings_all.each do |meeting|
  json.title = meeting.title
  json.agenda = meeting.agenda
  json.time = meeting.time
end