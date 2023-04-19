class AccountChartsController < ApplicationController
  before_action :set_account_chart, only: %i[ show edit update destroy ]

  # GET /account_charts or /account_charts.json
  def index
    @account_charts = AccountChart.all
  end

  # GET /account_charts/1 or /account_charts/1.json
  def show
  end

  # GET /account_charts/new
  def new
    @account_chart = AccountChart.new
  end

  # GET /account_charts/1/edit
  def edit
  end

  # POST /account_charts or /account_charts.json
  def create
    @account_chart = AccountChart.new(account_chart_params)

    respond_to do |format|
      if @account_chart.save
        format.html { redirect_to account_chart_url(@account_chart), notice: "Account chart was successfully created." }
        format.json { render :show, status: :created, location: @account_chart }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @account_chart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /account_charts/1 or /account_charts/1.json
  def update
    respond_to do |format|
      if @account_chart.update(account_chart_params)
        format.html { redirect_to account_chart_url(@account_chart), notice: "Account chart was successfully updated." }
        format.json { render :show, status: :ok, location: @account_chart }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @account_chart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account_charts/1 or /account_charts/1.json
  def destroy
    @account_chart.destroy

    respond_to do |format|
      format.html { redirect_to account_charts_url, notice: "Account chart was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account_chart
      @account_chart = AccountChart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def account_chart_params
      params.require(:account_chart).permit(:account_name, :ctype, :category, :class, :balance)
    end
end
