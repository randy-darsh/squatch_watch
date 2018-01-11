class SearchController < ApplicationController
  def index
    @search_by_state = BigFootReport.search_by_state(params[:search]).paginate(:page => params[:page], :per_page => 30)
    @search_by_report_number = BigFootReport.search_by_report_number(params[:search])
  end
end
