class ContractsController < ApplicationController
  before_action :set_contract, only: [:show, :edit, :update, :destroy]

  # GET /contracts
  # GET /contracts.json
  def index
    @contracts = Contract.all
    authorize @contracts
  end

  # GET /contracts/1
  # GET /contracts/1.json
  def show
  end

  # GET /contracts/new
  def new
    @contract = Contract.new
  end

  # GET /contracts/1/edit
  def edit
  end

  # POST /contracts
  # POST /contracts.json
  def create
    @contract = Contract.new(contract_params)

    respond_to do |format|
      if @contract.save
        format.html { redirect_to @contract, notice: 'Contract was successfully created.' }
        format.json { render :show, status: :created, location: @contract }
      else
        format.html { render :new }
        format.json { render json: @contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contracts/1
  # PATCH/PUT /contracts/1.json
  def update
    respond_to do |format|
      if @contract.update(contract_params)
        format.html { redirect_to @contract, notice: 'Contract was successfully updated.' }
        format.json { render :show, status: :ok, location: @contract }
      else
        format.html { render :edit }
        format.json { render json: @contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contracts/1
  # DELETE /contracts/1.json
  def destroy
    @contract.destroy
    respond_to do |format|
      format.html { redirect_to contracts_url, notice: 'Contract was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contract
      @contract = Contract.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contract_params
      params.require(:contract).permit(:id, :kintone_id, :hikari_contract_no, :charge_cd, :contract_status, :contract_date, :hikari_contract_no_reading, :mypage_password, :mypage_password_reading, :personal_identification_doc, :tnp_file_1_nm, :tnp_file_2_nm, :tnp_file_3_nm, :reject_reason_1, :reject_reason_other_1, :reject_reason_2, :reject_reason_other_2, :reject_reason_3, :reject_reason_other_3, :customer_id, :manage_company_id, :dest_id, :dest_tel, :dest_place_same_f, :dest_tel_nominee, :dest_tel_nominee_relationship, :dest_tel_nominee_sei_kanji, :dest_tel_nominee_mei_kanji, :dest_tel_nominee_sei_kana, :dest_tel_nominee_mei_kana, :application_date, :notice_delivered_f, :new_diversion, :diversion_appr_no, :diversion_appr_no_get_date, :penalty_for_diversion, :ntt_recept_no, :arena_so_no, :caf_no, :caf_no_reading, :access_key, :access_key_reading, :item_plan_id, :service_type_id, :initial_installment_f, :pack_appl_exists, :leqmo_id, :leqmo_phone_no, :isp_account, :isp_account_reading, :isp_password, :isp_password_reading, :movie_type_id, :leqmovie_login_id, :leqmovie_login_id_reading, :leqmovie_password, :leqmovie_password_reading, :gift_code, :o_hikari_tel_ace_f, :o_hikari_tel_f, :o_number_display_f, :o_number_request_f, :o_catch_phone_f, :o_auto_transfer_f, :o_nuisance_call_block_f, :o_missed_call_notify_mail_f, :o_tv_phone_f, :o_hq_sound_phone_f, :o_data_connect_f, :o_remote_service_f, :o_mail_f_1, :o_first_choice_account_1, :o_second_choice_account_1, :o_regist_account_1, :o_mail_f_2, :o_first_choice_account_2, :o_second_choice_account_2, :o_regist_account_2, :o_mail_f_3, :o_first_choice_account_3, :o_second_choice_account_3, :o_regist_account_3, :o_mail_f_4, :o_first_choice_account_4, :o_second_choice_account_4, :o_regist_account_4, :o_mail_f_5, :o_first_choice_account_5, :o_second_choice_account_5, :o_regist_account_5, :o_mail_f_6, :o_first_choice_account_6, :o_second_choice_account_6, :o_regist_account_6, :o_mail_f_7, :o_first_choice_account_7, :o_second_choice_account_7, :o_regist_account_7, :o_mail_f_8, :o_first_choice_account_8, :o_second_choice_account_8, :o_regist_account_8, :o_mail_f_9, :o_first_choice_account_9, :o_second_choice_account_9, :o_regist_account_9, :o_mail_f_10, :o_first_choice_account_10, :o_second_choice_account_10, :o_regist_account_10, :ntt_const_reseach_date, :opt_const_date, :initial_contract_charge, :circuit_charge_without_tax, :billing_method, :billing_id, :billing_destination, :payment_agency_appl_date, :credit_customer_no, :credit_additional_no, :bank_cd, :bank_nm, :bank_kana, :branch_cd, :branch_nm, :branch_kana, :account_number, :account_type, :account_holder_nm, :account_holder_kana, :japan_post_kigou, :japan_post_bangou, :billing_zip_cd, :billing_addr1, :billing_addr2, :billing_addr3, :create_user_id, :update_user_id, :created_at, :updated_at, :billing_destination_nm, :leqmovie_unext_manage_id, :credit_authorize_res_code, :credit_authorize_result, :billing_start_date, :construct_note, :cancel_reason, :cancel_recept_date, :cancel_date, :cancel_reason_note, :retraction_f, :dest_room_no, :service_stop_date, :ntt_system_input_date, :entry_cancel_date, :identification_ng_date, :open_ng_date, :identification_doc_approval, :fee_id, :o_home_gateway_f, :prev_movie_type_id, :plan_change_recept_date, :plan_change_date, :prev_leqmovie_unext_manage_id)
    end
end
