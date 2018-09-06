class Api::MeetingsController < ApplicationController

  def meetings_all
    @meetings_all = Meeting.all
    render 'meetings_all.json.jbuilder'
  end
  
  def index
    @meetings = Meeting.all
    render 'index.json.jbuilder'
  end

  def create
    @meeting = Meeting.new(
                          title: params[:title],
                          agenda: params[:agenda],
                          time: params[:time],
                          location: params[:location], 
                          remote: params[:remote]
                          )
    if @meeting.save
      render "show.json.jbuilder"
    else
      render json: {errors: @meeting.errors.full_messages }, status: :unprocessable_entity
    end

  end

  def show
    @meeting = Meeting.find(params[:id])
    render "show.json.jbuilder"
  end

  def update
    @meeting = Meeting.find(params[:id])
    @meeting.title = params[:title] || @meeting.title
    @meeting.agenda = params[:agenda] || @meeting.agenda
    @meeting.time = params[:time] || @meeting.time
    @meeting.location = params[:location] || @meeting.location

    if @meeting.save
      render "show.json.jbuilder"
    else
      render json: {errors: @meeting.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @meeting = Meeting.find(params[:id])
    @meeting.destroy
    render json: {message: "Meeting Adjorned"}
  end

end
