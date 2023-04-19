class InvoicesController < ApplicationController
  before_action :set_invoice, only: %i[ show edit update destroy ]
  before_action :find_invoice, only: [:show, :edit, :update, :destroy]

  # GET /invoices or /invoices.json
  def index
    @invoices = Invoice.all
  end

  # GET /invoices/1 or /invoices/1.json
  def show
  end

  # GET /invoices/new
  def new
    @invoice = Invoice.new
    @invoice.invoice_lines.build
  end

  # GET /invoices/1/edit 
  def edit
  end

  # POST /invoices or /invoices.json
 #  def create
   #  @invoice = Invoice.new(invoice_params)

   #  respond_to do |format|
     #  if @invoice.save
      #  format.html { redirect_to invoice_url(@invoice), notice: "Invoice was successfully created." }
       #  format.json { render :show, status: :created, location: @invoice }
     #  else
      #   format.html { render :new, status: :unprocessable_entity }
       #  format.json { render json: @invoice.errors, status: :unprocessable_entity }
      # end
   #  end
 #  end




def create
    @invoice = invoices.build(invoice_params)
    invoice_params[:invoice_lines_attributes].each do |num,product|
      @invoice.invoice_pros.build(product)
   
end 
   
      flash[:alert] = @invoice.errors.full_messages.uniq
      render :new
    
  end









  # PATCH/PUT /invoices/1 or /invoices/1.json
  def update
    respond_to do |format|
      if @invoice.update(invoice_params)
        format.html { redirect_to invoice_url(@invoice), notice: "Invoice was successfully updated." }
        format.json { render :show, status: :ok, location: @invoice }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @invoice.errors, status: :unprocessable_entity }
      end
    end
  end









  # DELETE /invoices/1 or /invoices/1.json
  def destroy
    @invoice.destroy

    respond_to do |format|
      format.html { redirect_to invoices_url, notice: "Invoice was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def add_field
    respond_to do |format|
      format.js {render layout: false}
    end
  end




  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invoice
      @invoice = Invoice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def invoice_params
      params.require(:invoice).permit(:customer_no, :custoner_name, :contactno, :contact_name, :address, :city, :date, :sale_person_code, :sale_person_name, invoice_lines_attributes: [:charge_type, :item_no, :description, :quantity, :unit_of_measure, :unit_price, :amount, :_destroy])
    end






def find_invoice
   @invoice = Invoice.find_by(id: params[:id])
  end

end
