class StaticPagesController < ApplicationController
  def dashboard

    if params[:start_date].blank? || params[:end_date].blank?
      return
    end

    @start_date = Date.strptime(params[:start_date], '%m/%d/%Y')
    @end_date = Date.strptime(params[:end_date], '%m/%d/%Y')
  end
end
