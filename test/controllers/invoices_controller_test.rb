require "test_helper"

class InvoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoice = invoices(:one)
  end

  test "should get index" do
    get invoices_url
    assert_response :success
  end

  test "should get new" do
    get new_invoice_url
    assert_response :success
  end

  test "should create invoice" do
    assert_difference('Invoice.count') do
      post invoices_url, params: { invoice: { address: @invoice.address, city: @invoice.city, contact_name: @invoice.contact_name, contactno: @invoice.contactno, customer_no: @invoice.customer_no, custoner_name: @invoice.custoner_name, date: @invoice.date, sale_person_code: @invoice.sale_person_code, sale_person_name: @invoice.sale_person_name } }
    end

    assert_redirected_to invoice_url(Invoice.last)
  end

  test "should show invoice" do
    get invoice_url(@invoice)
    assert_response :success
  end

  test "should get edit" do
    get edit_invoice_url(@invoice)
    assert_response :success
  end

  test "should update invoice" do
    patch invoice_url(@invoice), params: { invoice: { address: @invoice.address, city: @invoice.city, contact_name: @invoice.contact_name, contactno: @invoice.contactno, customer_no: @invoice.customer_no, custoner_name: @invoice.custoner_name, date: @invoice.date, sale_person_code: @invoice.sale_person_code, sale_person_name: @invoice.sale_person_name } }
    assert_redirected_to invoice_url(@invoice)
  end

  test "should destroy invoice" do
    assert_difference('Invoice.count', -1) do
      delete invoice_url(@invoice)
    end

    assert_redirected_to invoices_url
  end
end
