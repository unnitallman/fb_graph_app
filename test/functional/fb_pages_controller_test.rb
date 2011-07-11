require 'test_helper'

class FbPagesControllerTest < ActionController::TestCase
  setup do
    @fb_page = fb_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fb_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fb_page" do
    assert_difference('FbPage.count') do
      post :create, :fb_page => @fb_page.attributes
    end

    assert_redirected_to fb_page_path(assigns(:fb_page))
  end

  test "should show fb_page" do
    get :show, :id => @fb_page.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @fb_page.to_param
    assert_response :success
  end

  test "should update fb_page" do
    put :update, :id => @fb_page.to_param, :fb_page => @fb_page.attributes
    assert_redirected_to fb_page_path(assigns(:fb_page))
  end

  test "should destroy fb_page" do
    assert_difference('FbPage.count', -1) do
      delete :destroy, :id => @fb_page.to_param
    end

    assert_redirected_to fb_pages_path
  end
end
