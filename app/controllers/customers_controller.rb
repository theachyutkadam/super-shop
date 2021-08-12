class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy, :soft_delete]

  # GET /customers
  # GET /customers.json
  def index
    puts "------------"
    puts "------------"
    puts "------------"
    puts "------------"
    puts "------------"
    @customers = Customer.order(:last_name).paginate(page: params[:page], per_page: 10)
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
  end

  # GET /customers/new
  def new
    @customer = Customer.new
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
        format.html { redirect_to customers_url, notice: 'Customer was successfully created.' }
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

  def soft_delete
    if @customer.is_delete == false
      @customer.update_attribute(:is_delete, true)
      format.html { redirect_to customers_path, notice: 'Customer was successfully disable.' }
    else
      @customer.update_attribute(:is_delete, false)
      format.html { redirect_to customers_path, notice: 'Customer was successfully enable.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:first_name, :middle_name, :last_name, :contact, :birthdate, :gender, :address)
    end
end
