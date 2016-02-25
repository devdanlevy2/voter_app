class CandidatesController < ApplicationController
  def index
    render json: Candidate.all
  end

  def show
    id = params[:id]
    render json: Candidate.find(id)
  end

  def create
    name = params["name"]
    district = params["district"]
    party = params["party"]
    home_town = params["home_town"]
    c = Candidate.create(name: name, district: district, party: party, home_town: home_town)
    render json: c
  end
end
