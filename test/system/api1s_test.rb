require "application_system_test_case"

class Api1sTest < ApplicationSystemTestCase
  setup do
    @api1 = api1s(:one)
  end

  test "visiting the index" do
    visit api1s_url
    assert_selector "h1", text: "Api1s"
  end

  test "creating a Api1" do
    visit api1s_url
    click_on "New Api1"

    fill_in "Content", with: @api1.content
    fill_in "Title", with: @api1.title
    click_on "Create Api1"

    assert_text "Api1 was successfully created"
    click_on "Back"
  end

  test "updating a Api1" do
    visit api1s_url
    click_on "Edit", match: :first

    fill_in "Content", with: @api1.content
    fill_in "Title", with: @api1.title
    click_on "Update Api1"

    assert_text "Api1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Api1" do
    visit api1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Api1 was successfully destroyed"
  end
end
