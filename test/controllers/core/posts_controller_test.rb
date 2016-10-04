require 'test_helper'

class Core::PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @core_post = core_posts(:one)
  end

  test "should get index" do
    get core_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_core_post_url
    assert_response :success
  end

  test "should create core_post" do
    assert_difference('Core::Post.count') do
      post core_posts_url, params: { core_post: { content: @core_post.content, name: @core_post.name, title: @core_post.title } }
    end

    assert_redirected_to core_post_url(Core::Post.last)
  end

  test "should show core_post" do
    get core_post_url(@core_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_core_post_url(@core_post)
    assert_response :success
  end

  test "should update core_post" do
    patch core_post_url(@core_post), params: { core_post: { content: @core_post.content, name: @core_post.name, title: @core_post.title } }
    assert_redirected_to core_post_url(@core_post)
  end

  test "should destroy core_post" do
    assert_difference('Core::Post.count', -1) do
      delete core_post_url(@core_post)
    end

    assert_redirected_to core_posts_url
  end
end
