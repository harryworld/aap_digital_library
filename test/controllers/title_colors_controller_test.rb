require 'test_helper'

class TitleColorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @title_color = title_colors(:one)
  end

  test "should get index" do
    get title_colors_url
    assert_response :success
  end

  test "should get new" do
    get new_title_color_url
    assert_response :success
  end

  test "should create title_color" do
    assert_difference('TitleColor.count') do
      post title_colors_url, params: { title_color: { hex: @title_color.hex, name: @title_color.name } }
    end

    assert_redirected_to title_color_path(TitleColor.last)
  end

  test "should show title_color" do
    get title_color_url(@title_color)
    assert_response :success
  end

  test "should get edit" do
    get edit_title_color_url(@title_color)
    assert_response :success
  end

  test "should update title_color" do
    patch title_color_url(@title_color), params: { title_color: { hex: @title_color.hex, name: @title_color.name } }
    assert_redirected_to title_color_path(@title_color)
  end

  test "should destroy title_color" do
    assert_difference('TitleColor.count', -1) do
      delete title_color_url(@title_color)
    end

    assert_redirected_to title_colors_path
  end
end
