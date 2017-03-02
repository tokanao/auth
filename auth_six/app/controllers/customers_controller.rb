class CustomersController < ApplicationController
  before_filter :authenticate_user

  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  before_filter :add_abilities
  before_filter :check_abilities

  # GET /customers
  # GET /customers.json
  def index
    @customers = Customer.all
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
  end

  # GET /customers/new
  def new
    @customer = Customer.new
    # head(404) and return unless can?(current_user, :edit_customer, @customer)
  end

  # GET /customers/1/edit
  def edit
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: 'Customer was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, notice: 'Customer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  protected

    def add_abilities
      abilities << Customer
    end
    
    def check_abilities
       unless can?(current_user, :customer, Customer)
binding.pry 
          head(404) 
      end
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:id, :personal_cd, :parent_customer_id, :member_store_cd, :charge_cd, :customer_nm, :customer_kana, :customer_type, :is_manage_company, :president_nm, :post, :birth, :sex, :zip_cd, :addr1, :addr2, :addr3, :tel, :fax, :mobile_number, :email, :si_owner_f, :si_client_f, :bb_owner_f, :bb_agency_f, :note, :create_user_id, :update_user_id, :created_at, :updated_at)
    end
end
