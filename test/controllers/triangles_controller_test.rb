require 'test_helper'

class TrianglesControllerTest < ActionController::TestCase
  setup do
    @triangle = triangles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:triangles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create triangle" do
    assert_difference('Triangle.count') do
      post :create, triangle: { adjacent_leg: @triangle.adjacent_leg, hypotenuse: @triangle.hypotenuse, opposite_leg: @triangle.opposite_leg }
    end

    assert_redirected_to triangle_path(assigns(:triangle))
  end

  test "should show triangle" do
    get :show, id: @triangle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @triangle
    assert_response :success
  end

  test "should update triangle" do
    patch :update, id: @triangle, triangle: { adjacent_leg: @triangle.adjacent_leg, hypotenuse: @triangle.hypotenuse, opposite_leg: @triangle.opposite_leg }
    assert_redirected_to triangle_path(assigns(:triangle))
  end

  test "should destroy triangle" do
    assert_difference('Triangle.count', -1) do
      delete :destroy, id: @triangle
    end

    assert_redirected_to triangles_path
  end
end
