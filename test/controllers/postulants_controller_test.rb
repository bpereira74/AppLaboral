require "test_helper"

class PostulantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @postulant = postulants(:one)
  end

  test "should get index" do
    get postulants_url
    assert_response :success
  end

  test "should get new" do
    get new_postulant_url
    assert_response :success
  end

  test "should create postulant" do
    assert_difference("Postulant.count") do
      post postulants_url, params: { postulant: { description: @postulant.description, message: @postulant.message, offer_id: @postulant.offer_id, user_id: @postulant.user_id } }
    end

    assert_redirected_to postulant_url(Postulant.last)
  end

  test "should show postulant" do
    get postulant_url(@postulant)
    assert_response :success
  end

  test "should get edit" do
    get edit_postulant_url(@postulant)
    assert_response :success
  end

  test "should update postulant" do
    patch postulant_url(@postulant), params: { postulant: { description: @postulant.description, message: @postulant.message, offer_id: @postulant.offer_id, user_id: @postulant.user_id } }
    assert_redirected_to postulant_url(@postulant)
  end

  test "should destroy postulant" do
    assert_difference("Postulant.count", -1) do
      delete postulant_url(@postulant)
    end

    assert_redirected_to postulants_url
  end
end
