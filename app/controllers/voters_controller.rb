class VotersController < ApplicationController
  def create
    name = params["name"]
    party = params["party"]
    token = params["token"]
    v = Voter.create(name: name, party: party, token: token)
    render json: v
  end

  def show
    id = params[:id]
    render json: Voter.find(id)
  end

  def update
    
  end
end
