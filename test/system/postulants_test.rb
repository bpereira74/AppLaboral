require "application_system_test_case"

class PostulantsTest < ApplicationSystemTestCase
  setup do
    @postulant = postulants(:one)
  end

  test "visiting the index" do
    visit postulants_url
    assert_selector "h1", text: "Postulants"
  end

  test "should create postulant" do
    visit postulants_url
    click_on "New postulant"

    fill_in "Description", with: @postulant.description
    fill_in "Message", with: @postulant.message
    fill_in "Offer", with: @postulant.offer_id
    fill_in "User", with: @postulant.user_id
    click_on "Create Postulant"

    assert_text "Postulant was successfully created"
    click_on "Back"
  end

  test "should update Postulant" do
    visit postulant_url(@postulant)
    click_on "Edit this postulant", match: :first

    fill_in "Description", with: @postulant.description
    fill_in "Message", with: @postulant.message
    fill_in "Offer", with: @postulant.offer_id
    fill_in "User", with: @postulant.user_id
    click_on "Update Postulant"

    assert_text "Postulant was successfully updated"
    click_on "Back"
  end

  test "should destroy Postulant" do
    visit postulant_url(@postulant)
    click_on "Destroy this postulant", match: :first

    assert_text "Postulant was successfully destroyed"
  end
end
