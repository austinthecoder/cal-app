class PagesController < ApplicationController

  helper_method :calendar

  def calendar
    @calendar ||= Cal::MonthlyCalendar.new(params[:date] || Date.current)
  end

end