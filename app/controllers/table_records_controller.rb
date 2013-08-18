class TableRecordsController < ApplicationController
  before_action :set_table_record, only: [:show, :edit, :update, :destroy]

  # GET /table_records
  # GET /table_records.json
  def index
    @table_records = TableRecord.all
  end

  # GET /table_records/1
  # GET /table_records/1.json
  def show
  end

  # GET /table_records/new
  def new
    @table_record = TableRecord.new
  end

  # GET /table_records/1/edit
  def edit
  end

  # POST /table_records
  # POST /table_records.json
  def create
    @table_record = TableRecord.new(table_record_params)
    @table = Table.where( :id => params[:table_id] )
    @table_record.table = @table
    
    respond_to do |format|
      if @table_record.save
        format.html { redirect_to @table_record, notice: 'Table record was successfully created.' }
        format.json { render action: 'show', status: :created, location: @table_record }
      else
        format.html { render action: 'new' }
        format.json { render json: @table_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /table_records/1
  # PATCH/PUT /table_records/1.json
  def update
    respond_to do |format|
      if @table_record.update(table_record_params)
        format.html { redirect_to @table_record, notice: 'Table record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @table_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /table_records/1
  # DELETE /table_records/1.json
  def destroy
    @table_record.destroy
    respond_to do |format|
      format.html { redirect_to table_records_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_table_record
      @table_record = TableRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def table_record_params
      params.require(:table_record).permit(:date, :description, :value)
    end
end
