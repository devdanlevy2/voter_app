require 'test_helper'

class VotersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, id: voters(:one).id
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :successs
  end

end
