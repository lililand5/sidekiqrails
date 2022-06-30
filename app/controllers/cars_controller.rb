class CarsController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  # def parse_match_statistic
  #   service = ActualizeService.new
  #   service.actualize_match_statistic(params[:match_id])
  #   # result = service.error ? { alert: 'Произошла ошибка смотри лог' } : { notice: 'Done' }

  #   flash[:alert] = 'Здесь у меня alert.'

  #   # result = if service.error
  #   #   { alert: 'Произошла ошибка смотри лог' }
  #   # else
  #   #   { notice: 'Done' }
  #   # end

  #   # result = if service.error
  #   #   alert: 'Произошла ошибка смотри лог'
  #   # else
  #   #   notice: 'Done'
  #   # end

  #   redirect_back({fallback_location: list_matches_by_season_matches_path})
  # end
end
