class VotesController < ApplicationController
  def create
    candidate_id = params["candidate_id"]
    voter_id = params["voter_id"]
    voter = Voter.create(candidate_id: candidate_id, voter_id: voter_id)
    render json: voter
  end

  def destroy
    
  end

  def index
    render json: Voter.all
  end
end
