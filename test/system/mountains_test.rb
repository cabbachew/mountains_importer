require "application_system_test_case"

class MountainsTest < ApplicationSystemTestCase
  setup do
    @mountain = mountains(:one)
  end

  test "visiting the index" do
    visit mountains_url
    assert_selector "h1", text: "Mountains"
  end

  test "should create mountain" do
    visit mountains_url
    click_on "New mountain"

    fill_in "Height", with: @mountain.height
    fill_in "Name", with: @mountain.name
    click_on "Create Mountain"

    assert_text "Mountain was successfully created"
    click_on "Back"
  end

  test "should update Mountain" do
    visit mountain_url(@mountain)
    click_on "Edit this mountain", match: :first

    fill_in "Height", with: @mountain.height
    fill_in "Name", with: @mountain.name
    click_on "Update Mountain"

    assert_text "Mountain was successfully updated"
    click_on "Back"
  end

  test "should destroy Mountain" do
    visit mountain_url(@mountain)
    click_on "Destroy this mountain", match: :first

    assert_text "Mountain was successfully destroyed"
  end
end
