require "test_helper"

class AccountChartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @account_chart = account_charts(:one)
  end

  test "should get index" do
    get account_charts_url
    assert_response :success
  end

  test "should get new" do
    get new_account_chart_url
    assert_response :success
  end

  test "should create account_chart" do
    assert_difference('AccountChart.count') do
      post account_charts_url, params: { account_chart: { account_name: @account_chart.account_name, balance: @account_chart.balance, category: @account_chart.category, class: @account_chart.class, ctype: @account_chart.ctype } }
    end

    assert_redirected_to account_chart_url(AccountChart.last)
  end

  test "should show account_chart" do
    get account_chart_url(@account_chart)
    assert_response :success
  end

  test "should get edit" do
    get edit_account_chart_url(@account_chart)
    assert_response :success
  end

  test "should update account_chart" do
    patch account_chart_url(@account_chart), params: { account_chart: { account_name: @account_chart.account_name, balance: @account_chart.balance, category: @account_chart.category, class: @account_chart.class, ctype: @account_chart.ctype } }
    assert_redirected_to account_chart_url(@account_chart)
  end

  test "should destroy account_chart" do
    assert_difference('AccountChart.count', -1) do
      delete account_chart_url(@account_chart)
    end

    assert_redirected_to account_charts_url
  end
end
