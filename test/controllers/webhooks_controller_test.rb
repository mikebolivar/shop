require 'test_helper'

class WebhooksControllerTest < ActionController::TestCase
  setup do
    @webhook = webhooks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:webhooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create webhook" do
    assert_difference('Webhook.count') do
      post :create, webhook: { event: @webhook.event, object_json: @webhook.object_json, shopify_webhook_id: @webhook.shopify_webhook_id }
    end

    assert_redirected_to webhook_path(assigns(:webhook))
  end

  test "should show webhook" do
    get :show, id: @webhook
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @webhook
    assert_response :success
  end

  test "should update webhook" do
    patch :update, id: @webhook, webhook: { event: @webhook.event, object_json: @webhook.object_json, shopify_webhook_id: @webhook.shopify_webhook_id }
    assert_redirected_to webhook_path(assigns(:webhook))
  end

  test "should destroy webhook" do
    assert_difference('Webhook.count', -1) do
      delete :destroy, id: @webhook
    end

    assert_redirected_to webhooks_path
  end
end
