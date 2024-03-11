require "test_helper"

class MThreadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @m_thread = m_threads(:one)
  end

  test "should get index" do
    get m_threads_url
    assert_response :success
  end

  test "should get new" do
    get new_m_thread_url
    assert_response :success
  end

  test "should create m_thread" do
    assert_difference("MThread.count") do
      post m_threads_url, params: { m_thread: { created_by: @m_thread.created_by, title: @m_thread.title } }
    end

    assert_redirected_to m_thread_url(MThread.last)
  end

  test "should show m_thread" do
    get m_thread_url(@m_thread)
    assert_response :success
  end

  test "should get edit" do
    get edit_m_thread_url(@m_thread)
    assert_response :success
  end

  test "should update m_thread" do
    patch m_thread_url(@m_thread), params: { m_thread: { created_by: @m_thread.created_by, title: @m_thread.title } }
    assert_redirected_to m_thread_url(@m_thread)
  end

  test "should destroy m_thread" do
    assert_difference("MThread.count", -1) do
      delete m_thread_url(@m_thread)
    end

    assert_redirected_to m_threads_url
  end
end
