require "application_system_test_case"

class MThreadsTest < ApplicationSystemTestCase
  setup do
    @m_thread = m_threads(:one)
  end

  test "visiting the index" do
    visit m_threads_url
    assert_selector "h1", text: "M threads"
  end

  test "should create m thread" do
    visit m_threads_url
    click_on "New m thread"

    fill_in "Created by", with: @m_thread.created_by
    fill_in "Title", with: @m_thread.title
    click_on "Create M thread"

    assert_text "M thread was successfully created"
    click_on "Back"
  end

  test "should update M thread" do
    visit m_thread_url(@m_thread)
    click_on "Edit this m thread", match: :first

    fill_in "Created by", with: @m_thread.created_by
    fill_in "Title", with: @m_thread.title
    click_on "Update M thread"

    assert_text "M thread was successfully updated"
    click_on "Back"
  end

  test "should destroy M thread" do
    visit m_thread_url(@m_thread)
    click_on "Destroy this m thread", match: :first

    assert_text "M thread was successfully destroyed"
  end
end
