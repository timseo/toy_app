require 'test_helper'

class MicroblogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @microblog = microblogs(:one)
  end

  test "should get index" do
    get microblogs_url
    assert_response :success
  end

  test "should get new" do
    get new_microblog_url
    assert_response :success
  end

  test "should create microblog" do
    assert_difference('Microblog.count') do
      post microblogs_url, params: { microblog: { content: @microblog.content, user_id: @microblog.user_id } }
    end

    assert_redirected_to microblog_url(Microblog.last)
  end

  test "should show microblog" do
    get microblog_url(@microblog)
    assert_response :success
  end

  test "should get edit" do
    get edit_microblog_url(@microblog)
    assert_response :success
  end

  test "should update microblog" do
    patch microblog_url(@microblog), params: { microblog: { content: @microblog.content, user_id: @microblog.user_id } }
    assert_redirected_to microblog_url(@microblog)
  end

  test "should destroy microblog" do
    assert_difference('Microblog.count', -1) do
      delete microblog_url(@microblog)
    end

    assert_redirected_to microblogs_url
  end
end
