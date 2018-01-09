class SquatchMapController < ApplicationController
  def index
    @big_foot_reports = BigFootReport.all
  end
end
