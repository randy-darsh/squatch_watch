class BigFootReportsController < ApplicationController

  def index
    if current_user
      @big_foot_reports = BigFootReport.order_by_report_number.paginate(:page => params[:page], :per_page => 30)
    else
      redirect_to root_path
      flash[:notice] = "Please create an account or login first"
    end
  end

  def show
    if current_user
      @big_foot_report = BigFootReport.find(params[:id])
    else
      redirect_to root_path
      flash[:notice] = "Please create an account or login first"
    end
  end

  def new
    if current_user
      @big_foot_report = BigFootReport.new
    else
      redirect_to root_path
      flash[:notice] = "Please create an account or login first"
    end
  end

  def create
    @big_foot_report = BigFootReport.new(big_foot_report_params)
    @big_foot_report.save
    @big_foot_report.update!(report_number: @big_foot_report.id + 58238)
    @big_foot_report.update!(id: @big_foot_report.report_number)
    redirect_to big_foot_report_path(@big_foot_report.id)
    flash[:notice] = "Your Samsquantch Report has been saved!"
  end

  private

  def big_foot_report_params
    params.require(:big_foot_report).permit(:report_number, :report_class, :state, :season, :date, :month, :year, :environment, :location_details, :observed, :also_noticed, :other_witnesses, :other_stories, :time_and_conditions, :county, :nearest_town, :nearest_road, :a_g_references)
  end

end
