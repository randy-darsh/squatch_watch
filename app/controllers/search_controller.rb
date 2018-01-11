class SearchController < ApplicationController
  def index
    if current_user
      @search_by_state = BigFootReport.search_by_state(params[:search]).paginate(:page => params[:page], :per_page => 30)
      @search_by_report_number = BigFootReport.search_by_report_number(params[:search])
      @search_by_year = BigFootReport.search_by_year(params[:search]).paginate(:page => params[:page], :per_page => 30)
      @search_by_season = BigFootReport.search_by_season(params[:search]).paginate(:page => params[:page], :per_page => 30)
      @search_by_report_class = BigFootReport.search_by_report_class(params[:search]).paginate(:page => params[:page], :per_page => 30)
    else
      redirect_to root_path
      flash[:notice] = "Please create an account or login first"
    end
  end
end
