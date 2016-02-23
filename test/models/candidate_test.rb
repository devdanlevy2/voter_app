require 'test_helper'

class CandidateTest < ActiveSupport::TestCase
  test "candidate has a name, home town, district, party" do
    c1= Candidate.create!(name: "Bob Dole", home_town: "Kansas", district: 9, party: "Republican")
    c2= Candidate.create!(name: "Ross Perrot", home_town: "Texas", district: 77, party: "Independent")
    assert_equal "Bob Dole", c1.name
    assert_equal "Independent", c2.party
  end

  test "candidate has many votes" do
    c1= Candidate.create!(name: "Bob Dole", home_town: "Kansas", district: 9, party: "Republican")
    c2= Candidate.create!(name: "Ross Perrot", home_town: "Texas", district: 77, party: "Independent")
    vote1 = Vote.create!(candidate_id: 1, voter_id: 1)
    vote2 = Vote.create!(candidate_id: 1, voter_id: 2)
    c1.votes << vote1
    c1.votes << vote2
    assert 2, Candidate.select(c1.votes)

  end
end
