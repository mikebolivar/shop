require 'test_helper'

class SharedsControllerTest < ActionController::TestCase
  setup do
    @shared = shareds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shareds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shared" do
    assert_difference('Shared.count') do
      post :create, shared: { body: @shared.body, checked: @shared.checked, post_id: @shared.post_id, user_id: @shared.user_id, via: @shared.via }
    end

    assert_redirected_to shared_path(assigns(:shared))
  end

  test "should show shared" do
    get :show, id: @shared
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shared
    assert_response :success
  end

  test "should update shared" do
    patch :update, id: @shared, shared: { body: @shared.body, checked: @shared.checked, post_id: @shared.post_id, user_id: @shared.user_id, via: @shared.via }
    assert_redirected_to shared_path(assigns(:shared))
  end

  test "should destroy shared" do
    assert_difference('Shared.count', -1) do
      delete :destroy, id: @shared
    end

    assert_redirected_to shareds_path
  end
end
