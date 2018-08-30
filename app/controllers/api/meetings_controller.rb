class Api::MeetingsController < ApplicationController

    def meetings_all
    @meetings_all = Meeting.all
    render 'meetings_all.json.jbuilder'
  end
  
end
