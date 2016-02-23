class CandidatesController < ApplicationController
  def index
    render json: Candidate.all
  end

  def show
    # id = params("id")
    # render json: Candidate.find(id)
  end

  def create
    # name = params["name"]
    # district = params["district"]
    # party = params["party"]
    # Candidate.create(name: name, district: district, party: party)
  end
end
