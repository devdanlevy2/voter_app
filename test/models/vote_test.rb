require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  test "vote has a voter" do
    v1 = Vote.create!(voter_id: 1, candidate_id: 1)
    v2 = Vote.create!(voter_id: 2, candidate_id: 1)
    assert_equal 1, v1.voter_id
  end

  test "vote has a candidate" do
    v1 = Vote.create!(voter_id: 1, candidate_id: 1)
    v2 = Vote.create!(voter_id: 2, candidate_id: 2)
    assert_equal 2, v2.candidate_id
  end
end
