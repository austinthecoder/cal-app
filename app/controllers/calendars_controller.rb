class CalendarsController < ApplicationController

  helper_method :calendar

  def calendar
    @calendar ||= Cal::MonthlyCalendar.from_param params[:month], :start_week_on => :monday
  end

end