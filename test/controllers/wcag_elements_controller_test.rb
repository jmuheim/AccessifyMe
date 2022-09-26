require "test_helper"

class WcagElementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wcag_element = wcag_elements(:one)
  end

  test "should get index" do
    get wcag_elements_url
    assert_response :success
  end

  test "should get new" do
    get new_wcag_element_url
    assert_response :success
  end

  test "should create wcag_element" do
    assert_difference("WcagElement.count") do
      post wcag_elements_url, params: { wcag_element: { description: @wcag_element.description, level: @wcag_element.level, name: @wcag_element.name, parent_id: @wcag_element.parent_id, position: @wcag_element.position, type: @wcag_element.type } }
    end

    assert_redirected_to wcag_element_url(WcagElement.last)
  end

  test "should show wcag_element" do
    get wcag_element_url(@wcag_element)
    assert_response :success
  end

  test "should get edit" do
    get edit_wcag_element_url(@wcag_element)
    assert_response :success
  end

  test "should update wcag_element" do
    patch wcag_element_url(@wcag_element), params: { wcag_element: { description: @wcag_element.description, level: @wcag_element.level, name: @wcag_element.name, parent_id: @wcag_element.parent_id, position: @wcag_element.position, type: @wcag_element.type } }
    assert_redirected_to wcag_element_url(@wcag_element)
  end

  test "should destroy wcag_element" do
    assert_difference("WcagElement.count", -1) do
      delete wcag_element_url(@wcag_element)
    end

    assert_redirected_to wcag_elements_url
  end
end
