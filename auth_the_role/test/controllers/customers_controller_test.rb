require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post :create, customer: { addr1: @customer.addr1, addr2: @customer.addr2, addr3: @customer.addr3, bb_agency_f: @customer.bb_agency_f, bb_owner_f: @customer.bb_owner_f, birth: @customer.birth, charge_cd: @customer.charge_cd, create_user_id: @customer.create_user_id, created_at: @customer.created_at, customer_kana: @customer.customer_kana, customer_nm: @customer.customer_nm, customer_type: @customer.customer_type, email: @customer.email, fax: @customer.fax, id: @customer.id, is_manage_company: @customer.is_manage_company, member_store_cd: @customer.member_store_cd, mobile_number: @customer.mobile_number, note: @customer.note, parent_customer_id: @customer.parent_customer_id, personal_cd: @customer.personal_cd, post: @customer.post, president_nm: @customer.president_nm, sex: @customer.sex, si_client_f: @customer.si_client_f, si_owner_f: @customer.si_owner_f, tel: @customer.tel, update_user_id: @customer.update_user_id, updated_at: @customer.updated_at, zip_cd: @customer.zip_cd }
    end

    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should show customer" do
    get :show, id: @customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer
    assert_response :success
  end

  test "should update customer" do
    patch :update, id: @customer, customer: { addr1: @customer.addr1, addr2: @customer.addr2, addr3: @customer.addr3, bb_agency_f: @customer.bb_agency_f, bb_owner_f: @customer.bb_owner_f, birth: @customer.birth, charge_cd: @customer.charge_cd, create_user_id: @customer.create_user_id, created_at: @customer.created_at, customer_kana: @customer.customer_kana, customer_nm: @customer.customer_nm, customer_type: @customer.customer_type, email: @customer.email, fax: @customer.fax, id: @customer.id, is_manage_company: @customer.is_manage_company, member_store_cd: @customer.member_store_cd, mobile_number: @customer.mobile_number, note: @customer.note, parent_customer_id: @customer.parent_customer_id, personal_cd: @customer.personal_cd, post: @customer.post, president_nm: @customer.president_nm, sex: @customer.sex, si_client_f: @customer.si_client_f, si_owner_f: @customer.si_owner_f, tel: @customer.tel, update_user_id: @customer.update_user_id, updated_at: @customer.updated_at, zip_cd: @customer.zip_cd }
    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete :destroy, id: @customer
    end

    assert_redirected_to customers_path
  end
end
