class SquatchMapController < ApplicationController
  def index
    if current_user
      @big_foot_reports = BigFootReport.all
    else
      redirect_to root_path
      flash[:notice] = "Please create an account or login first"
    end
  end
end
