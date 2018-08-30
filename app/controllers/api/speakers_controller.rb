class Api::SpeakersController < ApplicationController

  def id_6_action
    @id_6 = Speaker.find_by(id: 6)
    render 'id_6.json.jbuilder'
  end
end
