require "test_helper"

class MountainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mountain = mountains(:one)
  end

  test "should get index" do
    get mountains_url
    assert_response :success
  end

  test "should get new" do
    get new_mountain_url
    assert_response :success
  end

  test "should create mountain" do
    assert_difference("Mountain.count") do
      post mountains_url, params: { mountain: { height: @mountain.height, name: @mountain.name } }
    end

    assert_redirected_to mountain_url(Mountain.last)
  end

  test "should show mountain" do
    get mountain_url(@mountain)
    assert_response :success
  end

  test "should get edit" do
    get edit_mountain_url(@mountain)
    assert_response :success
  end

  test "should update mountain" do
    patch mountain_url(@mountain), params: { mountain: { height: @mountain.height, name: @mountain.name } }
    assert_redirected_to mountain_url(@mountain)
  end

  test "should destroy mountain" do
    assert_difference("Mountain.count", -1) do
      delete mountain_url(@mountain)
    end

    assert_redirected_to mountains_url
  end
end
