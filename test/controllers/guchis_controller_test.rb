require 'test_helper'

class GuchisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guchi = guchis(:one)
  end

  test "should get index" do
    get guchis_url
    assert_response :success
  end

  test "should get new" do
    get new_guchi_url
    assert_response :success
  end

  test "should create guchi" do
    assert_difference('Guchi.count') do
      post guchis_url, params: { guchi: { name: @guchi.name, text: @guchi.text } }
    end

    assert_redirected_to guchi_url(Guchi.last)
  end

  test "should show guchi" do
    get guchi_url(@guchi)
    assert_response :success
  end

  test "should get edit" do
    get edit_guchi_url(@guchi)
    assert_response :success
  end

  test "should update guchi" do
    patch guchi_url(@guchi), params: { guchi: { name: @guchi.name, text: @guchi.text } }
    assert_redirected_to guchi_url(@guchi)
  end

  test "should destroy guchi" do
    assert_difference('Guchi.count', -1) do
      delete guchi_url(@guchi)
    end

    assert_redirected_to guchis_url
  end
end
