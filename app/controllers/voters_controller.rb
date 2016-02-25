class VotersController < ApplicationController
  def create
    name = params["name"]
    party = params["party"]
    token = params["token"]
    v = Voter.create(name: name, party: party)
    render json: v
  end

  def show
    id = params[:id]
    render json: Voter.find(id)
  end

  def update
    r = Review.find(params[:id])
#enter update loop here????
    r.update
    render json: "update was successful."
 end
  end
end
