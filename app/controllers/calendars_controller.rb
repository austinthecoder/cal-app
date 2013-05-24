class CalendarsController < ApplicationController
  helper_method :calendar

  def calendar
    @calendar ||= begin
      year, month = if params[:id]
        params[:id].split '-'
      else
        today = Date.today
        [today.year, today.month]
      end
      Cal.new_monthly_calendar year, month, :start_week_on => :monday
    end
  end
end