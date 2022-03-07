require 'test_helper'

class Api1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api1 = api1s(:one)
  end

  test "should get index" do
    get api1s_url
    assert_response :success
  end

  test "should get new" do
    get new_api1_url
    assert_response :success
  end

  test "should create api1" do
    assert_difference('Api1.count') do
      post api1s_url, params: { api1: { content: @api1.content, title: @api1.title } }
    end

    assert_redirected_to api1_url(Api1.last)
  end

  test "should show api1" do
    get api1_url(@api1)
    assert_response :success
  end

  test "should get edit" do
    get edit_api1_url(@api1)
    assert_response :success
  end

  test "should update api1" do
    patch api1_url(@api1), params: { api1: { content: @api1.content, title: @api1.title } }
    assert_redirected_to api1_url(@api1)
  end

  test "should destroy api1" do
    assert_difference('Api1.count', -1) do
      delete api1_url(@api1)
    end

    assert_redirected_to api1s_url
  end
end
