class BigFootReportsController < ApplicationController
  def index
    @big_foot_reports = BigFootReport.order_by_report_number.paginate(:page => params[:page], :per_page => 30)
  end

  def new
    @big_foot_report = BigFootReport.new
  end

  def show
    @big_foot_report = BigFootReport.find(params[:id])
  end

  def create
    @big_foot_report = BigFootReport.new(big_foot_report_params)
    if @big_foot_report.save
      flash[:success] = "Your Samsquantch Report has been saved!"
      redirect_to big_foot_reports_path(@big_foot_report)
    else
      render :new
    end
  end

  private

  def big_foot_report_params
    params.require(:big_foot_report).permit(:report_class, :state, :season, :date, :month, :year, :environment, :location_details, :obverved, :also_noticed, :other_witnesses, :time_and_conditions, :county, :nearest_town, :nearest_road, :a_g_references)
  end

end
