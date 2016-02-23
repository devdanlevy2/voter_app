require 'test_helper'

class VoterTest < ActiveSupport::TestCase
  test "voter has a name, party, and token" do
    voter1 = Voter.create!(name: "Dan Levy", party: "Democratic", token: "88832ahfs9*")
    assert_equal "Dan Levy", voter1.name
    assert_equal "Democratic", voter1.party
    assert_equal "88832ahfs9*", voter1.token
  end
end
