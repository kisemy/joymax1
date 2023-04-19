require "application_system_test_case"

class AccountChartsTest < ApplicationSystemTestCase
  setup do
    @account_chart = account_charts(:one)
  end

  test "visiting the index" do
    visit account_charts_url
    assert_selector "h1", text: "Account Charts"
  end

  test "creating a Account chart" do
    visit account_charts_url
    click_on "New Account Chart"

    fill_in "Account name", with: @account_chart.account_name
    fill_in "Balance", with: @account_chart.balance
    fill_in "Category", with: @account_chart.category
    fill_in "Class", with: @account_chart.class
    fill_in "Ctype", with: @account_chart.ctype
    click_on "Create Account chart"

    assert_text "Account chart was successfully created"
    click_on "Back"
  end

  test "updating a Account chart" do
    visit account_charts_url
    click_on "Edit", match: :first

    fill_in "Account name", with: @account_chart.account_name
    fill_in "Balance", with: @account_chart.balance
    fill_in "Category", with: @account_chart.category
    fill_in "Class", with: @account_chart.class
    fill_in "Ctype", with: @account_chart.ctype
    click_on "Update Account chart"

    assert_text "Account chart was successfully updated"
    click_on "Back"
  end

  test "destroying a Account chart" do
    visit account_charts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Account chart was successfully destroyed"
  end
end
