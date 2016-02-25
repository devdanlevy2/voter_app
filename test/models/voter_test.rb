require 'test_helper'

class VoterTest < ActiveSupport::TestCase
  test "voter has a name, party, and token" do
    voter1 = Voter.create!(name: "Dan Levy", party: "Democratic",)
    assert_equal "Dan Levy", voter1.name
    assert_equal "Democratic", voter1.party
  end
end
