require 'test_helper'

class TodonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @todon = todons(:one)
  end

  test "should get index" do
    get todons_url, as: :json
    assert_response :success
  end

  test "should create todon" do
    assert_difference('Todon.count') do
      post todons_url, params: { todon: { description: @todon.description, end: @todon.end, title: @todon.title } }, as: :json
    end

    assert_response 201
  end

  test "should show todon" do
    get todon_url(@todon), as: :json
    assert_response :success
  end

  test "should update todon" do
    patch todon_url(@todon), params: { todon: { description: @todon.description, end: @todon.end, title: @todon.title } }, as: :json
    assert_response 200
  end

  test "should destroy todon" do
    assert_difference('Todon.count', -1) do
      delete todon_url(@todon), as: :json
    end

    assert_response 204
  end
end
