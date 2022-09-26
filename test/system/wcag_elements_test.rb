require "application_system_test_case"

class WcagElementsTest < ApplicationSystemTestCase
  setup do
    @wcag_element = wcag_elements(:one)
  end

  test "visiting the index" do
    visit wcag_elements_url
    assert_selector "h1", text: "Wcag elements"
  end

  test "should create wcag element" do
    visit wcag_elements_url
    click_on "New wcag element"

    fill_in "Description", with: @wcag_element.description
    fill_in "Level", with: @wcag_element.level
    fill_in "Name", with: @wcag_element.name
    fill_in "Parent", with: @wcag_element.parent_id
    fill_in "Position", with: @wcag_element.position
    fill_in "Type", with: @wcag_element.type
    click_on "Create Wcag element"

    assert_text "Wcag element was successfully created"
    click_on "Back"
  end

  test "should update Wcag element" do
    visit wcag_element_url(@wcag_element)
    click_on "Edit this wcag element", match: :first

    fill_in "Description", with: @wcag_element.description
    fill_in "Level", with: @wcag_element.level
    fill_in "Name", with: @wcag_element.name
    fill_in "Parent", with: @wcag_element.parent_id
    fill_in "Position", with: @wcag_element.position
    fill_in "Type", with: @wcag_element.type
    click_on "Update Wcag element"

    assert_text "Wcag element was successfully updated"
    click_on "Back"
  end

  test "should destroy Wcag element" do
    visit wcag_element_url(@wcag_element)
    click_on "Destroy this wcag element", match: :first

    assert_text "Wcag element was successfully destroyed"
  end
end
