class VotesController < ApplicationController
  def create
    candidate_id = params["candidate_id"]
    voter_id = params["voter_id"]
    voter = Voter.create(candidate_id: candidate_id, voter_id: voter_id)
    render json: voter
  end

  def destroy
    v = Vote.find(params[:id])
    v.destroy
    render json: "Delete was successful."
    end

  end

  def index
    render json: Voter.all
  end
end
