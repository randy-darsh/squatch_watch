class SquatchReportsController < ApplicationController
  def index
    @squatch_reports = BigFootReport.order_by_report_number.paginate(:page => params[:page], :per_page => 30)
  end

  def show
    @squatch_report = BigFootReport.find(params[:id])
  end
end
